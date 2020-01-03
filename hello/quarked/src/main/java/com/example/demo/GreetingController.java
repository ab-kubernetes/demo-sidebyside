package com.example.demo;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class GreetingController {
    
    private String prefix = "Yo";
    
    private final String hostname =
       System.getenv().getOrDefault("HOSTNAME", "unknown");

    private int count = 0;

    @GetMapping
    public Greeting greet() {
        count++;
        return new Greeting(prefix + " :" + count, hostname);
    }

    public static class Greeting {

        private final String name;
        private final String host;

        public Greeting(String name, String host) {
            this.name = name;
            this.host = host;
        }

        public String getName() {
            return name;
        }

        public String getHost() {
            return host;
        }
    }

}