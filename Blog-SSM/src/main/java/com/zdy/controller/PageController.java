package com.zdy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 处理一些页面的跳转
 */
@Controller
public class PageController {

    /**
     * 启动项目后从index.jsp中进入这个方法
     * @return
     */
    @RequestMapping("/fore")
    public String home(){
        return "redirect: fore/home";
    }

    /**
     * 从后台进入前端
     * @return
     */
    @RequestMapping("/toFore")
    public String foreHome(){
        System.out.println("从后台进入前台");
        return "redirect: fore/home";
    }

    /**
     * 进入后台的方法
     * @return
     */
    @RequestMapping("adminHome")
    public String admin(){
        System.out.println("进入后台执行");
        return "admin/index";
    }

    /**
     * 进入后台登录页面，拦截器调用
     * @return
     */
    @RequestMapping("/login")
    public String login(){
        System.out.println("拦截器转发。。。");
        return "admin/login";
    }


}
