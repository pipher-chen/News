package com.pipher.service.impl;

import com.pipher.dao.UserDao;
import com.pipher.entity.User;
import com.pipher.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * Created by pipher on 2017/6/11.
 */
@Service("userService")
public class UserServiceImpl implements UserService{

    @Resource
    private UserDao userDao;


    public User login(User user) {
        return userDao.login(user);
    }
}
