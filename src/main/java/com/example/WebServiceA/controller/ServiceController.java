package com.example.WebServiceA.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@Controller
public class ServiceController {
    @GetMapping("/")
    // green page version 1.0
    public String hello() {
        return "greenpage";
    }
    
}
