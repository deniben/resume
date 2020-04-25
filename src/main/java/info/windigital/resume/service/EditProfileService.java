package info.windigital.resume.service;

import info.windigital.resume.entity.Profile;
import info.windigital.resume.entity.Skill;
import info.windigital.resume.entity.SkillCategory;
import info.windigital.resume.form.SignUpForm;

import java.util.List;

public interface EditProfileService {
    Profile createNewProfile(SignUpForm signUpForm);

    List<Skill> listSkills(long idProfile);

    List<SkillCategory> listSkillCategories();

    void updateSkills(long idProfile, List<Skill> skills);
}
