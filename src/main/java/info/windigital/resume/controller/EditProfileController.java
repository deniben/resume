package info.windigital.resume.controller;

import info.windigital.resume.service.SkillCategoryService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class EditProfileController {
    private final Logger LOGGER = LoggerFactory.getLogger(getClass());


    private final SkillCategoryService skillCategoryService;

    public EditProfileController(SkillCategoryService skillCategoryService) {
        this.skillCategoryService = skillCategoryService;
    }

    @GetMapping("/edit")
    public String editProfile() {
        return "edit";
    }

    @GetMapping("/edit/skills")
    public String getEditSkills(Model model) {
        model.addAttribute("skillCategories", skillCategoryService.findAll());
        return "edit-skills";
    }
}
