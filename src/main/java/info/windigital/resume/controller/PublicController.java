package info.windigital.resume.controller;

import info.windigital.resume.entity.Profile;
import info.windigital.resume.repository.ProfileRepository;
import info.windigital.resume.service.NameService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class PublicController {

    private final ProfileRepository profileRepository;

    public PublicController(ProfileRepository profileRepository) {
        this.profileRepository = profileRepository;
    }


    @GetMapping("/{uid}")
    public String getProfile(@PathVariable String uid, Model model) {
        Profile profile = profileRepository.findByUid(uid);
        if (profile == null) {
            return "profile_not_found";
        }
        model.addAttribute("profile", profile);
        return "profile";
    }

    @GetMapping("/error")
    public String getError() {
        return "error";
    }
}