package com.zdy.service;

import com.zdy.pojo.Blog;
import com.zdy.pojo.Category;

import java.util.List;

public interface BlogService {

    public List<Blog> selectAll();

    public List<Blog> selectByTime();

    public void fill(List<Blog> blogs);

    public void fill(Blog blog);

    public Blog selectOneById(int id);

    public int update(Blog blog);

    public void insert(Blog blog);

    public void deleteById(int id);

    Blog findByIdForHtml(int id);

    List<Blog> selectByCid(int cid);
}
