package com.lanou.blog.service;

import com.lanou.blog.bean.Blog;

import java.util.List;

public interface BlogService {

    List<Blog> findAllBlog();

    void addBlog(Blog blog);

    void deleteBlog(Integer id);

    Blog findById(Integer id);

    List<Blog> query(String title);
}
