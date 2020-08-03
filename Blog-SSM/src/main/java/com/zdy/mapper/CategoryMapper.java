package com.zdy.mapper;

import com.zdy.pojo.Category;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface CategoryMapper {

    public int insert(@Param("name") String name);


    public List<Category> select();

    public Category selectOneByName(@Param("name") String name);

    public Category selectOneById(@Param("id") int id);

    public int deleteOne(@Param("id") int id);

    public int updateCategory(Category category);
}
