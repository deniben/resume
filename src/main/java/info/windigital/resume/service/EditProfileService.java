package info.windigital.resume.service;

import info.windigital.resume.entity.SkillCategory;
import info.windigital.resume.repository.SkillCategoryRepository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class EditProfileService {
    private final SkillCategoryRepository skillCategoryRepository;

    public EditProfileService(SkillCategoryRepository skillCategoryRepository) {
        this.skillCategoryRepository = skillCategoryRepository;
    }

    public List<SkillCategory> findAll() {
        return skillCategoryRepository.findAll();
    }
}
