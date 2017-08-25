package com.lanou.blog.mapper;


import com.lanou.blog.bean.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

/**
 * Created by dllo on 2017/8/23.
 */
@Repository
public interface UserMapper {

    //登录查询所有
    User findAllUser(@Param("name") String name, @Param("password") String password);

    //注册
    void insertUser(User user);

}
