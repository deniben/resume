package info.windigital.resume.service.implementation;

import info.windigital.resume.entity.SkillCategory;
import info.windigital.resume.repository.SkillCategoryRepository;
import info.windigital.resume.service.SkillCategoryService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class SkillCategoryServiceImpl implements SkillCategoryService {
    private final SkillCategoryRepository skillCategoryRepository;

    public SkillCategoryServiceImpl(SkillCategoryRepository skillCategoryRepository) {
        this.skillCategoryRepository = skillCategoryRepository;
    }

    @Override
    public List<SkillCategory> findAll() {
        return skillCategoryRepository.findAll();
    }
}
