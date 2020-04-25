package info.windigital.resume.service;

import info.windigital.resume.entity.Profile;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

public interface FindProfileService {
    Profile findByUid(String uid);

    Iterable<Profile> findAll();

    Page<Profile> findAll(Pageable var1);
}
