package com.zdy.controller;

import com.zdy.pojo.Blog;
import com.zdy.pojo.Category;
import com.zdy.service.BlogService;
import com.zdy.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * 用来处理前端请求
 */
@Controller
@RequestMapping("fore")
public class foreController {

    @Autowired
    BlogService blogService;
    @Autowired
    CategoryService categoryService;

    /**
     * 进入关于我
     * @return
     */
    @RequestMapping("/about")
    public String about(){
        return "fore/about";
    }

    /**
     * 进入友链
     * @return
     */
    @RequestMapping("/link")
    public String link(){
        return "fore/link";
    }

    /**
     * 进入主页
     * @param model
     * @return
     */
    @RequestMapping("/home")
    public String list(Model model){
        List<Blog> blogs = blogService.selectByTime();
        List<Category> categories = categoryService.select();
        //填充分类
        blogService.fill(blogs);
        model.addAttribute("blogs",blogs);
        model.addAttribute("categories",categories);
        return "fore/home";
    }

    /**
     * 进入全部博客页面
     * @return
     */
    @RequestMapping("bloglist")
    public String bloglist(Model model){
        List<Blog> blogs = blogService.selectAll();
        List<Category> categories = categoryService.select();
        //填充分类
        blogService.fill(blogs);
        model.addAttribute("blogs",blogs);
        model.addAttribute("categories",categories);
        model.addAttribute("msg",1);
        return "fore/bloglist";
    }
    /**
     * 进入博客详情
     */
    @RequestMapping("blog")
    public String blog(int id,Model model){
        model.addAttribute("blog",blogService.findByIdForHtml(id));
        List<Category> categories = categoryService.select();
        model.addAttribute("categories",categories);
        return "fore/blog";
    }

    /**
     * 根据分类查询
     */
    @RequestMapping("search")
    public String search(Model model, int cid, String cname){
        List<Blog> blogs = blogService.selectByCid(cid);
        blogService.fill(blogs);
        List<Category> categories = categoryService.select();
        model.addAttribute("categories",categories);
        model.addAttribute("blogs",blogs);
        model.addAttribute("cname",cname);
        model.addAttribute("msg",0);
        return "fore/bloglist";
    }
}
