package info.windigital.resume.controller;

import info.windigital.resume.service.NameService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class PublicController {

    @Autowired
    private NameService nameService;

    @GetMapping("/{uid}")
    public String getProfile(@PathVariable String uid, Model model) {
        String fullName = nameService.convertName(uid);
        model.addAttribute("fullName", fullName);
        return "profile";
    }

    @GetMapping("/error")
    public String getError() {
        return "error";
    }
}
