package com.lanou.blog.service;


import com.lanou.blog.bean.User;

/**
 * Created by dllo on 2017/8/23.
 */
public interface UserService {

    User findAllUser(String name, String password);
    void insertUser(User user);
}
