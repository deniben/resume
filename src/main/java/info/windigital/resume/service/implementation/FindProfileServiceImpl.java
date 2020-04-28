package info.windigital.resume.service.implementation;

import info.windigital.resume.entity.CurrentProfile;
import info.windigital.resume.entity.Profile;
import info.windigital.resume.repository.ProfileRepository;
import info.windigital.resume.service.FindProfileService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


@Service
@Transactional
public class FindProfileServiceImpl implements FindProfileService, UserDetailsService {
    private static final Logger LOGGER = LoggerFactory.getLogger(FindProfileServiceImpl.class);
    private final ProfileRepository profileRepository;

    @Autowired
    public FindProfileServiceImpl(ProfileRepository profileRepository) {
        this.profileRepository = profileRepository;
    }

    @Override
    public Profile findByUid(String uid) {
        return profileRepository.findByUid(uid);
    }

    @Override
    public Iterable<Profile> findAllForIndexing() {
        Iterable<Profile> all = profileRepository.findAll();
        for (Profile p : all) {
            p.getSkills().size();
            p.getCertificates().size();
            p.getLanguages().size();
            p.getPractices().size();
            p.getCourses().size();
        }
        return all;
    }

    @Override
    public Page<Profile> findAll(Pageable var1) {
        return profileRepository.findAll(var1);
    }

    @Override
    public Page<Profile> findBySearchQuery(String query, Pageable pageable) {
        return null;
    }


    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        Profile profile = findProfile(username);
        if (profile != null) {
            return new CurrentProfile(profile);
        } else {
            LOGGER.error("Profile not found by {}", username);
            throw new UsernameNotFoundException("Profile not found by {}" + username);
        }
    }

    private Profile findProfile(String username) {
        Profile profile = profileRepository.findByUid(username);
        if (profile == null) {
            profile = profileRepository.findByEmail(username);
            if (profile == null) {
                profile = profileRepository.findByPhone(username);
            }
        }
        return profile;
    }
}
