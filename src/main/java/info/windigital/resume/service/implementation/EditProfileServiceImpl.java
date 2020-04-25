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
        return profile;
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
        }

    }
}
