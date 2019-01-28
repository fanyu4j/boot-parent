package com.github.controller;

import com.github.domain.UserDo;
import com.github.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
@RequestMapping("user")
public class UserController {

    @Autowired(required = false)
    private UserService userService;

    @RequestMapping("getUserByName")
    @ResponseBody
    public UserDo getUserByName(String name){
        UserDo user = userService.getUserByName(name);
        return user;
    }
}
