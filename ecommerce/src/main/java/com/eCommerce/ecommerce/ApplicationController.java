package com.eCommerce.ecommerce;


import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ApplicationController {

    @RequestMapping("/")
    public String home(){
        return "home";
    }

    @PostMapping("/login")
    public void logIn(@RequestParam("email") String email, @RequestParam("pass") String pass)
    {
        System.out.println(email);
    }

    @GetMapping("/login")
    public String logIn()
    {
        return "login";
    }
    @PostMapping("/register2")
    public void register(@RequestParam("name") String name, @RequestParam("pass") String pass, @RequestParam("email") String email, @RequestParam("phone") String phone)
    {
        System.out.println(name);
    }

    @GetMapping("/register")
    public String register()
    {
        return "login";
    }

    

}
