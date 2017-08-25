package com.lanou.blog.controller;

import com.lanou.blog.bean.Blog;
import com.lanou.blog.service.BlogService;
import com.lanou.blog.service.impl.BlogServiceImpl;
import org.junit.Test;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

@Controller
public class BlogController {
    @Resource
    private BlogService service;


    @RequestMapping(value = "/allBlog")
    public String allBlogPage() {
        return "page/blog/allBlog";
    }

    @RequestMapping(value = "/addBlogPage")
    public String addBlogPage() {
        return "page/blog/addBlog";
    }

    @RequestMapping(value = "/showBlogPage")
    public String showBlogPage() {
        return "page/blog/showBlog";
    }

    @RequestMapping(value = "/getAll")
    @ResponseBody
    public List<Blog> getAll() {
        List<Blog> list = service.findAllBlog();
        return list;
    }

    @RequestMapping(value = "/addBlog")
    @ResponseBody
    public String addBlog(Blog blog) {
        service.addBlog(blog);
        return "添加成功";
    }

    @RequestMapping(value = "/deleteBlog")
    @ResponseBody
    public Integer delete(@RequestParam("bid") Integer id) {
        service.deleteBlog(id);
        return id;
    }

    @RequestMapping(value = "/showBlog")
    @ResponseBody
    public Blog show(@RequestParam("tid") Integer id) {
        Blog blog = service.findById(id);
        return blog;
    }

    @RequestMapping(value = "/queryBlog")
    @ResponseBody
    public List<Blog> query(@RequestParam("title") String title) {
        List<Blog> list = service.query(title);
        for (int i = 0; i < list.size(); i++) {
            System.out.println(list.get(i));
        }
        return list;
    }

}
