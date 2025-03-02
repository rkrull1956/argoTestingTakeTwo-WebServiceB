package com.example.WebServiceB.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class ServiceController {
    @GetMapping("/")
    // green page version 1.0
    public String hello() {
        return "greenpage";
    }
    
}
