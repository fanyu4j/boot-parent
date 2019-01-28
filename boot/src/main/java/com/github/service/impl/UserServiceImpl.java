package com.github.service.impl;

import com.github.dao.UserMapper;
import com.github.domain.UserDo;
import com.github.service.UserService;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;

@Component("userService")
public class UserServiceImpl implements UserService {

    @Resource
    private UserMapper userMapper;

    @Override
    public UserDo getUserByName(String name) {
        return userMapper.selectUserByUsername(name);
    }


    @Override
    public void updateUserByUsername(UserDo user) {

    }

}
