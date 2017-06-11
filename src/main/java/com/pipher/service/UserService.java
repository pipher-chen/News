package com.pipher.service;

import com.pipher.entity.User;

/**
 * Created by pipher on 2017/6/11.
 */
public interface UserService {

    /**
     * 用户登录
     * @param user
     * @return
     */
    public User login(User user);
}
