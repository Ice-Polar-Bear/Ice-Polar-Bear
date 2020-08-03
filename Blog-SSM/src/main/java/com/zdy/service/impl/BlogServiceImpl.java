package com.zdy.service.impl;


import com.zdy.mapper.BlogMapper;
import com.zdy.pojo.Blog;
import com.zdy.pojo.Category;
import com.zdy.service.BlogService;
import com.zdy.service.CategoryService;
import com.zdy.utils.MarkdownUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BlogServiceImpl implements BlogService {

    @Autowired
    BlogMapper blogMapper;

    @Autowired
    CategoryService categoryService;

    @Override
    public List<Blog> selectAll() {
        return blogMapper.selectAll();
    }

    @Override
    public List<Blog> selectByTime() {
        return blogMapper.selectByTime();
    }

    @Override
    public void fill(List<Blog> blogs) {
        for (Blog blog : blogs) {
            blog.setCategory(categoryService.selectOneById(blog.getCategoryId()));
        }
    }

    @Override
    public Blog selectOneById(int id) {
        return blogMapper.selectOneById(id);
    }

    @Override
    public int update(Blog blog) {
        return blogMapper.update(blog);
    }

    @Override
    public void fill(Blog blog) {
        blog.setCategory(categoryService.selectOneById(blog.getCategoryId()));
    }

    @Override
    public void insert(Blog blog) {
        blogMapper.insert(blog);
    }

    @Override
    public void deleteById(int id) {
        blogMapper.deleteById(id);
    }

    @Override
    public Blog findByIdForHtml(int id) {
        Blog blog = blogMapper.selectOneById(id);
        String content = blog.getContent();
        String s = MarkdownUtils.markdownToHtml(content);
        blog.setContent(s);
        return blog;
    }

    @Override
    public List<Blog> selectByCid(int cid) {
        return blogMapper.selectByCid(cid);
    }
}
