package info.windigital.resume.service.implementation;

import info.windigital.resume.entity.Profile;
import info.windigital.resume.entity.Skill;
import info.windigital.resume.entity.SkillCategory;
import info.windigital.resume.exception.CantCompleteClientRequestException;
import info.windigital.resume.form.SignUpForm;
import info.windigital.resume.repository.ProfileRepository;
import info.windigital.resume.repository.SkillCategoryRepository;
import info.windigital.resume.service.EditProfileService;
import info.windigital.resume.util.DataUtil;
import org.apache.commons.collections4.CollectionUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.support.TransactionSynchronizationAdapter;
import org.springframework.transaction.support.TransactionSynchronizationManager;

import java.util.Collections;
import java.util.List;
import java.util.Optional;

@Service
@Transactional
public class EditProfileServiceImpl implements EditProfileService {
    private final Logger LOGGER = LoggerFactory.getLogger(getClass());
    private final SkillCategoryRepository skillCategoryRepository;
    private final ProfileRepository profileRepository;
    @Value("${generate.uid.max.try}")
    private int maxTryCountToGenerateUid;
    @Value("${generate.uid.alphabet}")
    private String generateUidAlphabet;
    @Value("${generate.uid.suffix.length}")
    private int generateUidSuffixLength;

    public EditProfileServiceImpl(SkillCategoryRepository skillCategoryRepository, ProfileRepository profileRepository) {
        this.skillCategoryRepository = skillCategoryRepository;
        this.profileRepository = profileRepository;
    }

    public List<SkillCategory> findAll() {
        return skillCategoryRepository.findAll();
    }

    @Override
    public Profile createNewProfile(SignUpForm signUpForm) {
        Profile profile = new Profile();
        profile.setUid(generateProfileUid(signUpForm));
        profile.setFirstName(DataUtil.capitalizeName(signUpForm.getFirstName()));
        profile.setLastName(DataUtil.capitalizeName(signUpForm.getLastName()));
        profile.setPassword(signUpForm.getPassword());
        profile.setCompleted(false);
        profileRepository.save(profile);
//        registerCreateIndexProfileIfTransactionSuccess(profile);
        return profile;
    }

    private void registerCreateIndexProfileIfTransactionSuccess(final Profile profile) {
        TransactionSynchronizationManager.registerSynchronization(new TransactionSynchronizationAdapter() {
            @Override
            public void afterCommit() {
                LOGGER.info("New profile created:{}", profile.getUid());
                profile.setCertificates(Collections.emptyList());
                profile.setPractices(Collections.emptyList());
                profile.setLanguages(Collections.emptyList());
                profile.setSkills(Collections.emptyList());
                profile.setCourses(Collections.emptyList());
                LOGGER.info("New Profiles index created: {}", profile.getUid());
            }
        });
    }

    private String generateProfileUid(SignUpForm signUpForm) {
        String baseUid = DataUtil.generateProfileUid(signUpForm);
        String uid = baseUid;
        for (int i = 0; profileRepository.countByUid(uid) > 0; i++) {
            uid = DataUtil.regenerateUidWithRandomSuffix(baseUid, generateUidAlphabet, generateUidSuffixLength);
            if (i >= maxTryCountToGenerateUid) {
                throw new CantCompleteClientRequestException("Can't generate unique uid for profile: " + baseUid + "maxTryCountToGenerateUid detected");
            }
        }
        return uid;


    }

    @Override
    public List<Skill> listSkills(long idProfile) {
        return profileRepository.findById(idProfile).orElse(new Profile()).getSkills();
    }

    @Override
    public List<SkillCategory> listSkillCategories() {
        return skillCategoryRepository.findAll();
    }

    @Override
    public void updateSkills(long idProfile, List<Skill> updatedSkills) {
        Optional<Profile> optionalProfile = profileRepository.findById(idProfile);
        Profile profile = optionalProfile.orElseGet(Profile::new);
        if (CollectionUtils.isEqualCollection(updatedSkills, profile.getSkills())) {
            LOGGER.debug("Profile skills: nothing to update");
            return;
        } else {
            profile.setSkills(updatedSkills);
            profileRepository.save(profile);
//            registerCreateIndexProfileSkillsIfTransactionSuccess(idProfile, updatedSkills);
        }

    }

    private void registerCreateIndexProfileSkillsIfTransactionSuccess(long idProfile, List<Skill> updatedSkills) {
        TransactionSynchronizationManager.registerSynchronization(new TransactionSynchronizationAdapter() {
            @Override
            public void afterCommit() {
                LOGGER.info("profile skills updated");
                updateIndexProfileSkills(idProfile, updatedSkills);
            }
        });
    }

    private void updateIndexProfileSkills(long idProfile, List<Skill> updatedSkills) {
//        Optional<Profile> optionalProfile = profileSearchRepository.findById(idProfile);
//        Profile  profile = optionalProfile.orElseGet(Profile::new);
//        profile.setSkills(updatedSkills);
//        profileSearchRepository.save(profile);
        LOGGER.info("Profile skills index updated");
    }

}
