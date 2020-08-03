package com.zdy.controller;

import com.zdy.pojo.Category;
import com.zdy.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/admin")
public class CategoryController {

    @Autowired
    CategoryService categoryService;

    /**
     * 打开添加分类页面
     * @return
     */
    @RequestMapping("/openAddCategory")
    public String openAddCategory(){
        return "admin/addCategory";
    }

    @RequestMapping("listCategory")
    public String list(Model model){
        List<Category> categories = categoryService.select();
        for (Category category : categories) {
            System.out.println(category);
        }
        model.addAttribute("categories",categories);
        return "admin/listCategory";
    }

    @RequestMapping("addCategory")
    @ResponseBody
    public String add(@RequestParam("category") String name){
        System.out.println(name);
        int f = categoryService.insert(name);
        System.out.println(f);
        if(f > 0) {
            return "success";
        }
        else{
            return "error";
        }
    }

    @RequestMapping("isExit")
    @ResponseBody
    public String isExit(@RequestParam("category") String name){
        System.out.println(name);
        Category category = categoryService.selectOneByName(name);
        System.out.println(category);
        if(null == category){
            return "success";
        }
        return "error";
    }

    @RequestMapping("deleteCategory")
    @ResponseBody
    public String delete(@RequestParam("category_id") int id){
        System.out.println("要删除的分类的id->"+id);
        categoryService.deleteOne(id);
        return "success";
    }

    @RequestMapping("editCategory")
    public String edit(Model model, @RequestParam("category_id") int id){
        Category category = categoryService.selectOneById(id);
        System.out.println(category);
        model.addAttribute("category",category);
        return "admin/editCategory";
    }

    @RequestMapping("updateCategory")
    @ResponseBody
    public String update(@RequestParam("id") int id,@RequestParam("name") String name){
        Category category = new Category(id,name);
        System.out.println(category);
        categoryService.updateCategory(category);
        return "success";
    }

}
