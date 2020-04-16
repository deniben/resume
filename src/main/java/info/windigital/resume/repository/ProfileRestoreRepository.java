package info.windigital.resume.repository;

import info.windigital.resume.entity.ProfileRestore;
import org.springframework.data.repository.CrudRepository;

public interface ProfileRestoreRepository extends CrudRepository<ProfileRestore, Long> {
    ProfileRestore findByToken(String token);
}
