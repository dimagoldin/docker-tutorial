package com.tutorials.dockertutorial.helloworld.controllers;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloWorldController {

    @GetMapping
    public String getHelloWorld() {
        var str = "Hello World!";
        System.out.println(str);
        return str;
    }
}
