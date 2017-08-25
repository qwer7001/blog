package com.lanou.blog.service.impl;


import com.lanou.blog.bean.User;
import com.lanou.blog.mapper.UserMapper;
import com.lanou.blog.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

/**
 * Created by dllo on 2017/8/23.
 */
@Service
public class UserServiceImpl implements UserService {
    @Resource
    private UserMapper userMapper;


    public User findAllUser(String name, String password) {

        return userMapper.findAllUser(name,password);
    }

    public void insertUser(User user) {
        userMapper.insertUser(user);
    }
}
