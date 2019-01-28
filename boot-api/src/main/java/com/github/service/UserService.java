package com.github.service;

import com.github.domain.UserDo;

public interface UserService {
    /**
     * 根据名字查询用户
     *
     * @param name
     * @return
     */
    UserDo getUserByName(String name);

    /**
     * 根据用户名更新用户
     *
     * @param user
     * @return
     */
    void updateUserByUsername(UserDo user);
}
