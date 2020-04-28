package info.windigital.resume.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.http.HttpSession;

@Controller
public class ViewLoginController {

    @GetMapping("sign-in")
    public String signIn() {
        return "sign-in";
    }

    @GetMapping("/sign-in-failed")
    public String signInFailed(HttpSession httpSession) {
        if (httpSession.getAttribute("SPRING_SECURITY_LAST_EXCEPTION") == null) {
            return "redirect:/sign-in";
        }
        return "sign-in";
    }
}
