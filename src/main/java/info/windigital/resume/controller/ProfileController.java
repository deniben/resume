package info.windigital.resume.controller;

import info.windigital.resume.service.NameService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Controller
public class ProfileController {
    private static final Logger LOGGER = LoggerFactory.getLogger(ProfileController.class);
    @Autowired
    private NameService nameService;


//    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        LOGGER.info("doGet /profile");
//        System.out.println("doGet profile  ");
//        req.getRequestDispatcher("WEB-INF/JSP/profile.jsp").forward(req, resp);
//    }

}
