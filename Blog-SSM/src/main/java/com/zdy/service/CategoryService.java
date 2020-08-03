package com.zdy.service;

import com.zdy.pojo.Category;

import java.util.List;

public interface CategoryService {
    public int insert(String name);

    public List<Category> select();

    public Category selectOneByName(String name);

    public Category selectOneById(int id);

    public int deleteOne(int id);

    public int updateCategory(Category category);
}
