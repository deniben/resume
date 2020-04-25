package info.windigital.resume.service.implementation;

import info.windigital.resume.entity.Profile;
import info.windigital.resume.repository.ProfileRepository;
import info.windigital.resume.service.FindProfileService;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FindProfileServiceImpl implements FindProfileService {
    private final ProfileRepository profileRepository;

    public FindProfileServiceImpl(ProfileRepository profileRepository) {
        this.profileRepository = profileRepository;
    }

    @Override
    public Profile findByUid(String uid) {
        return profileRepository.findByUid(uid);
    }

    @Override
    public Iterable<Profile> findAll() {
        return null;
    }

    @Override
    public Page<Profile> findAll(Pageable var1) {
        return profileRepository.findAll(var1);
    }


}
