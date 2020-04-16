package info.windigital.resume.controller;

import info.windigital.resume.entity.Profile;
import info.windigital.resume.form.SkillForm;
import info.windigital.resume.repository.ProfileRepository;
import info.windigital.resume.repository.SkillCategoryRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class EditProfileController {
    private final Logger LOGGER = LoggerFactory.getLogger(getClass());

    private final ProfileRepository profileRepository;
    private final SkillCategoryRepository skillCategoryRepository;

    public EditProfileController(ProfileRepository profileRepository, SkillCategoryRepository skillCategoryRepository) {
        this.profileRepository = profileRepository;
        this.skillCategoryRepository = skillCategoryRepository;
    }

    @GetMapping("/edit")
    public String editProfile() {
        return "edit";
    }

    @GetMapping("/edit/skills")
    public String getEditTechSkills(Model model) {
        model.addAttribute("skillForm", new SkillForm(profileRepository.findById(1L).orElse(new Profile()).getSkills()));
        return gotoSkillsJSP(model);
    }

    @PostMapping("/edit/skills")
    public String saveEditTechSkills(@ModelAttribute("skillForm") SkillForm skillForm, BindingResult bindingResult, Model model) {
        if (bindingResult.hasErrors()) {
            return gotoSkillsJSP(model);
        }
        return "redirect:/jared-dunn";
    }

    private String gotoSkillsJSP(Model model) {
        model.addAttribute("skillCategories", skillCategoryRepository.findAll());
        return "edit/skills";
    }
}
