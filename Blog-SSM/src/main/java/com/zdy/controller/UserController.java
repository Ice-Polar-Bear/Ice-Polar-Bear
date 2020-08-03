package com.zdy.controller;

import com.zdy.pojo.User;
import com.zdy.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

/**
 * 后台管理员进行登录和退出
 */
@Controller
@RequestMapping("user")
public class UserController {

    @Autowired
    UserService userService;

    @RequestMapping("/login")
    public String login(String username, String password, HttpSession session){
        User user = new User(0,username, password);
        User u = userService.login(user);
        session.setAttribute("user",u);
        if(null == u){
            System.out.println("登录ok");
            session.setAttribute("user",u);
            return "admin/login";
        }

        return "redirect: ../admin/welcome";
    }

    @RequestMapping("loginOut")
    public String loginOut(HttpSession session){
        session.removeAttribute("user");
        return "redirect: ../fore/home";
    }

}
