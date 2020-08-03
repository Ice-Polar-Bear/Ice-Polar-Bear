package com.zdy.mapper;

import com.zdy.pojo.Blog;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BlogMapper {

    public List<Blog> selectAll();

    List<Blog> selectByCid(int cid);


    public List<Blog> selectByTime();

    public Blog selectOneById(@Param("id") int id);

    public int update(Blog blog);

    public void insert(Blog blog);

    public void deleteById(int id);


}
