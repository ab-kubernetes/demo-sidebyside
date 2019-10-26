package com.example.demo;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class GreeterController {

    private String prefix = "Hola Boot";
      
    private static final String HOSTNAME =
            System.getenv().getOrDefault("HOSTNAME", "unknown");


    private int count = 0;

    @GetMapping("/")
    public String greet() {
        count++;
        return prefix + " " + HOSTNAME + ":" + count + "\n";
    }
}
