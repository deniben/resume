package info.windigital.resume.service;

import info.windigital.resume.entity.Profile;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

public interface FindProfileService {
    Profile findByUid(String uid);

    Iterable<Profile> findAllForIndexing();

    Page<Profile> findAll(Pageable pageable);

    Page<Profile> findBySearchQuery(String query, Pageable pageable);
}
