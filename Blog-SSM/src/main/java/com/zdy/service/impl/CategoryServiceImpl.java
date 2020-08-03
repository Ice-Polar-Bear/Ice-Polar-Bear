package com.zdy.service.impl;

import com.zdy.mapper.CategoryMapper;
import com.zdy.pojo.Category;
import com.zdy.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CategoryServiceImpl implements CategoryService {

    @Autowired
    CategoryMapper categoryMapper;

    @Override
    public int insert(String name) {
        return categoryMapper.insert(name);
    }

    @Override
    public List<Category> select(){
        return categoryMapper.select();
    }

    @Override
    public Category selectOneByName(String name) {
        return categoryMapper.selectOneByName(name);
    }

    @Override
    public Category selectOneById(int id) {
        return categoryMapper.selectOneById(id);
    }

    @Override
    public int deleteOne(int id) {
        return categoryMapper.deleteOne(id);
    }

    @Override
    public int updateCategory(Category category) {
        return categoryMapper.updateCategory(category);
    }
}
