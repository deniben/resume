package info.windigital.resume.controller;

import info.windigital.resume.entity.Profile;
import info.windigital.resume.form.SkillForm;
import info.windigital.resume.repository.ProfileRepository;
import info.windigital.resume.repository.SkillCategoryRepository;
import info.windigital.resume.service.EditProfileService;
import info.windigital.resume.service.FindProfileService;
import info.windigital.resume.util.SecurityUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import javax.validation.Valid;

@Controller
public class EditProfileController {
    private final Logger LOGGER = LoggerFactory.getLogger(getClass());
    private final EditProfileService editProfileService;

    public EditProfileController(EditProfileService editProfileService) {
        this.editProfileService = editProfileService;
    }

    @GetMapping("/edit")
    public String editProfile() {
        return "edit";
    }

    @GetMapping("/edit/skills")
    public String getEditSkills(Model model) {
        model.addAttribute("skillForm", new SkillForm(editProfileService.listSkills(SecurityUtil.getCurrentIdProfile())));
        return gotoSkillsJSP(model);
    }

    @PostMapping("/edit/skills")
    public String saveEditSkills(@Valid @ModelAttribute("skillForm") SkillForm skillForm, BindingResult bindingResult, Model model) {
        if (bindingResult.hasErrors()) {
            return gotoSkillsJSP(model);
        }
        editProfileService.updateSkills(SecurityUtil.getCurrentIdProfile(), skillForm.getItems());
        return "redirect:/jared-dunn";
    }

    private String gotoSkillsJSP(Model model) {
        model.addAttribute("skillCategories", editProfileService.listSkillCategories());
        return "edit/skills";
    }
}
