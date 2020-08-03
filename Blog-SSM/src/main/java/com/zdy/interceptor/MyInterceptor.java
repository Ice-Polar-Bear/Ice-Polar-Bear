package com.zdy.interceptor;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 登录拦截器，在没有登录的情况下不允许访问后台管理员的页面
 */
public class MyInterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object obj) throws Exception {

        String uri = request.getRequestURI();
        System.out.println("全部路径：-->"+uri);
        uri = uri.substring(uri.lastIndexOf('/') + 1);
        System.out.println("拦截的路径：-->"+uri);

        if(request.getSession().getAttribute("user") != null) return true;
        if(!uri.equals("login") || request.getSession().getAttribute("user") == null){
            System.out.println("拦截器进行拦截");
            response.sendRedirect("/Blog/login");
            return false;
        }
        return true;
    }

    @Override
    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

    }
}
