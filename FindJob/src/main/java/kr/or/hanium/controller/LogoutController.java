package kr.or.hanium.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping(value="/logout")
public class LogoutController {

    @GetMapping(value="")
    public String logout(HttpSession httpSession) throws Exception
    {
        httpSession.invalidate();
        return "index";
    }
}
