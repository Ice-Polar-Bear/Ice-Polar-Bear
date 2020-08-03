package com.zdy.controller;

import com.zdy.pojo.Blog;
import com.zdy.pojo.Category;
import com.zdy.service.BlogService;
import com.zdy.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/admin")
public class BlogController {

    @Autowired
    CategoryService categoryService;

    @Autowired
    BlogService blogService;

    @RequestMapping("/index")
    public String index(){
        return "admin/index";
    }

    @RequestMapping("/welcome")
    public String welcome(Model model){
        List<Category> categories = categoryService.select();
        int csNum = categories.size();

        List<Blog> blogs = blogService.selectAll();
        int bsNum = blogs.size();

        model.addAttribute("csNum",csNum);
        model.addAttribute("bsNum",bsNum);
        model.addAttribute("time", new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date()));

        return "admin/welcome";
    }

    @RequestMapping("/listBlog")
    public String list(Model model){
        List<Blog> blogs = blogService.selectAll();
        blogService.fill(blogs);
        model.addAttribute("blogs",blogs);
        return "admin/listBlog";
    }

    /**
     * 点击写文章按钮，跳转到写文章页面
     * @param model
     * @return
     */
    @RequestMapping("/addBlogPage")
    public String addPage(Model model){
        List<Category> categories = categoryService.select();
        model.addAttribute("cs",categories);
        return "admin/addBlog";
    }

    /**
     * 点提交文章按钮，新增文章
     * @return
     */
    @ResponseBody
    @RequestMapping("/addBlog")
    public String add(String title, String categoryid, String content){
        Blog blog = new Blog(0,title,Integer.parseInt(categoryid),content,new Date(),new Date());
        blogService.insert(blog);
        return "success";
    }

    /**
     * 点击编辑文章，跳转到编辑文章页面
     * @param id
     * @param model
     * @return
     */
    @RequestMapping("/editBlogPage")
    public String editBlogPage(@RequestParam("id") int id, Model model){
        Blog blog = blogService.selectOneById(id);
        blogService.fill(blog);
        List<Category> categories = categoryService.select();
        model.addAttribute("blog",blog);
        model.addAttribute("categories",categories);
        return "admin/editBlog";
    }

    /**
     * 点击确认修改按钮
     * @param
     * @return
     */
    @ResponseBody
    @RequestMapping("updateBlog")
    public String update(int id,String title, String categoryid, String content){
        Blog blog = new Blog(id,title,Integer.parseInt(categoryid),content,new Date(),new Date());
//        System.out.println(blog);
        blogService.update(blog);
        return "success";
    }

    @ResponseBody
    @RequestMapping("deleteBlog")
    public String delete(int id){
        blogService.deleteById(id);
        return "success";
    }

}
