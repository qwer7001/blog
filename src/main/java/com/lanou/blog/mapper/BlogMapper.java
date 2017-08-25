package com.lanou.blog.mapper;

import com.lanou.blog.bean.Blog;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface BlogMapper {

    List<Blog> findAll();

    void insertBlog(Blog blog);

    void deleteBlog(Integer id);

    Blog findById(Integer id);

    List<Blog> findByTitle(String title);

}
