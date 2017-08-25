package com.lanou.blog.controller;


import com.lanou.blog.bean.User;
import com.lanou.blog.service.UserService;
import com.lanou.blog.utils.MD5;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * Created by dllo on 2017/8/23.
 */
@Controller
public class UserController {
    @Resource
    private UserService userService;



    @RequestMapping(value = "/")
    public String index(){
        return "login";
    }
    @RequestMapping(value = "/registered")
    public String registered(){
        return "registered";
    }


    @RequestMapping(value = "/deleteUsername")
    public String deleteUsername( HttpServletRequest request){
        request.getSession().invalidate();
        return "login";
    }

    @RequestMapping(value = "/login",method = RequestMethod.POST)
    public String login(User user, HttpServletRequest request, ModelMap map){
       map.remove("error");

       if (user.getName().trim().equals("")||user.getPassword().trim().equals("")){
           map.addAttribute("error","账户密码不能为空");
           return "login";
       }


    User allUser = userService.findAllUser(user.getName(), MD5.getMD5Value(user.getPassword()));

    if (allUser!=null){
        request.getSession().setAttribute("username",allUser.getName());
        return "page/blog/allBlog";
    }else {
       map.addAttribute("error","账户密码输入错误");

        return "login";
    }
 }

    @RequestMapping(value ="/addUser",method = RequestMethod.POST)
    public String addUser(User user,HttpServletRequest request,ModelMap map){
        map.remove("message");
        String regex = "^((13[0-9])|(14[5|7])|(15([0-3]|[5-9]))|(18[0,5-9]))\\d{8}$";

        Pattern compile = Pattern.compile(regex);
        Matcher matcher = compile.matcher(user.getTel());

        if (user.getName().trim().equals("")||user.getPassword().trim().equals("")){
            map.addAttribute("message","账户密码不能为空");
            return "registered";
        }



        String password1 = request.getParameter("password1");


        if (!password1.equals(user.getPassword())){
            map.addAttribute("message","两次密码输入不一致");
            return "registered";
        }


        if (!matcher.find()){
            map.addAttribute("message","请输入正确的手机号");
            return "registered";
        }





        String md5Value = MD5.getMD5Value(user.getPassword());
        user.setPassword(md5Value);
        userService.insertUser(user);

        return "login";
    }






}
