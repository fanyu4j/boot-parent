package com.github.dao;

import com.github.domain.UserDo;
import org.apache.ibatis.annotations.Param;

public interface UserMapper {
    /**
     * 通过用户名查询用户
     *
     * @param username
     * @return
     */
    UserDo selectUserByUsername(@Param("username") String username);

    /**
     * 通过用户名更新用户信息
     *
     * @param user
     * @return
     */
    void updateUserByUsername(UserDo user);
}
