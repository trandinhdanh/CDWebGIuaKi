package com.example.demoemployee.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HelloWorldController {

    @RequestMapping("/helloaa")
    public ModelAndView helloWorld() {
        String message = "Hello World, Spring MVC JSP";
        return new ModelAndView("hello", "name", message);
    }
}