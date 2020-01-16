package kr.or.hanium.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/searchRecruitment")
public class SearchRecruitmentController {

    @GetMapping(value="")
    public String getRecruitmentSearch() {
        return "searchRecruitment";
    }
}
