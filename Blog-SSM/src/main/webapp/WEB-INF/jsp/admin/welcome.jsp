<%--
  Created by IntelliJ IDEA.
  User: 赵德胤
  Date: 2020/5/1
  Time: 15:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html class="x-admin-sm">
<head>
    <meta charset="UTF-8">
    <title>Welcome</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/font.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/xadmin.css">
    <script src="${pageContext.request.contextPath}/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/xadmin.js"></script>

</head>
<body>
<div class="layui-fluid">
    <div class="layui-row layui-col-space15">
        <div class="layui-col-md12">
            <div class="layui-card">
                <div class="layui-card-body ">
                    <blockquote class="layui-elem-quote">欢迎管理员：
                        <span class="x-red">admin</span>！当前时间:${time}
                        <br/>
                        <a href="../adminHome" class="x-red">后台管理</a>
                            <a href="../user/loginOut" class="x-red">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp退出</a>
                    </blockquote>
                </div>
            </div>
        </div>

        <div class="layui-col-md12">
            <div class="layui-card">
                <div class="layui-card-header">数据统计</div>
                <div class="layui-card-body ">
                    <ul class="layui-row layui-col-space10 layui-this x-admin-carousel x-admin-backlog">
                        <li class="layui-col-md4 layui-col-xs6">
                            <a href="javascript:;" class="x-admin-backlog-body">
                                <h3>分类数</h3>
                                <p>
                                    <cite>${csNum}</cite></p>
                            </a>
                        </li>
                        <li class="layui-col-md4 layui-col-xs6">
                            <a href="javascript:;" class="x-admin-backlog-body">
                                <h3>文章数</h3>
                                <p>
                                    <cite>${bsNum}</cite></p>
                            </a>
                        </li>
                        <li class="layui-col-md4 layui-col-xs6">
                            <a href="javascript:;" class="x-admin-backlog-body">
                                <h3>评论数</h3>
                                <p>
                                    <cite>99</cite></p>
                            </a>
                        </li>

                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
