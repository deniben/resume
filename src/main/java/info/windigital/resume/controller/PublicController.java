package info.windigital.resume.controller;

import info.windigital.resume.entity.Profile;
import info.windigital.resume.service.FindProfileService;
import info.windigital.resume.util.Constants;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.data.web.SortDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class PublicController {
    private final FindProfileService findProfileService;

    public PublicController(FindProfileService findProfileService) {
        this.findProfileService = findProfileService;
    }


    @GetMapping("/{uid}")
    public String getProfile(@PathVariable String uid, Model model) {
        Profile profile = findProfileService.findByUid(uid);
        if (profile == null) {
            return "profile_not_found";
        }
        model.addAttribute("profile", profile);
        return "profile";
    }

    @GetMapping("/welcome")
    public String listAll(Model model,
                          @PageableDefault(size = Constants.MAX_PROFILES_PER_PAGE)
                          @SortDefault(sort = "id") Pageable pageable) {
        Page<Profile> profiles = findProfileService.findAll(pageable);
        model.addAttribute("profiles", profiles.getContent());
        model.addAttribute("page", profiles);
        return "profiles";
    }

    @GetMapping("/fragment/more")
    public String moreProfiles(Model model,
                               @PageableDefault(size = Constants.MAX_PROFILES_PER_PAGE) @SortDefault(sort = "id") Pageable pageable) {
        Page<Profile> profiles = findProfileService.findAll(pageable);
        model.addAttribute("profiles", profiles.getContent());
        return "fragment/profile-items";
    }

    @GetMapping("/error")
    public String getError() {
        return "error";
    }


}
