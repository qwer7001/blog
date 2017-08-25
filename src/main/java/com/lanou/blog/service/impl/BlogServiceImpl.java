package com.lanou.blog.service.impl;

import com.lanou.blog.bean.Blog;
import com.lanou.blog.mapper.BlogMapper;
import com.lanou.blog.service.BlogService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class BlogServiceImpl implements BlogService {
    @Resource
    private BlogMapper mapper;


    public List<Blog> findAllBlog() {
        List<Blog> list = mapper.findAll();
        return list;
    }

    public void addBlog(Blog blog) {
        mapper.insertBlog(blog);
    }

    public void deleteBlog(Integer id) {
        mapper.deleteBlog(id);
    }

    public Blog findById(Integer id) {
        Blog blog = mapper.findById(id);
        return blog;
    }

    public List<Blog> query(String title) {
        String titles = "%" + title + "%";
        List<Blog> list = mapper.findByTitle(titles);
        return list;
    }
}
