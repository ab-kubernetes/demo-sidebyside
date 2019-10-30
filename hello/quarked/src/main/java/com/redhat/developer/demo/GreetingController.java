package com.redhat.developer.demo;


import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


@RestController
@RequestMapping("/")
public class GreetingController {
    
    private String prefix = "Yo";
    
    private String HOSTNAME =
       System.getenv().getOrDefault("HOSTNAME", "unknown");

    private int count = 0;

    @GetMapping
    public String greet() {
        count++;
        return prefix + " " + HOSTNAME + ":" + count + "\n";
    }

}