<%--
  Created by IntelliJ IDEA.
  User: 赵德胤
  Date: 2020/5/10
  Time: 11:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>博客内容</title>
    <!-- Bootstrap -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/bootstrap/css/bootstrap.min.css">
    <style>

        header{
            background-color: #fff;
        }
        html{
            height: 100%;
        }
        body{
            width: 100%;
            height: 100%;
            background-color: #E9EAED;
        }
        .navbar{
            margin: 0px;
            background-color: #fff;
        }
        li a{
            color: black;
            font-size: 18px;
        }
        div{
            display: block;
        }

        .container{
            width: 1400px;
        }
        .collapse {
            float: right;
            margin-right: 300px !important;
        }
        .doc{

            padding: 54px 0px;
        }

        .other-list{
            width: 350px;
            float:right;
        }

        .other-item{
            margin-top: 20px;
            padding: 10px;
            background-color: #fff;
        }
        hr{
            /*margin-bottom: 0px;*/
            /*border: 1px solid;*/
        }

        li{
            list-style-type: none;
        }
        a{
            color: black;
        }
        a:hover{
            color: rgb(66, 130, 248);
            text-decoration: none;
        }
        .footer{
            /* height: 61px; */
            text-align: center;
            padding: 25px;
            width: 100%;

            background-color: #fff;
        }
        .footer p{
            margin-bottom: 0px;
        }
        .blog-list{
            width: 1000px;
            float: left;
            font-size: 15px;
        }
        .blog-message{
            margin: 20px;
            padding: 30px;
            line-height: 20px;
            background-color: #fff;
        }
        .blog-info{
            margin: 20px;
            padding: 30px;
            font-size: 17px;
            line-height: 30px;
            background-color : #fff;
        }
        textarea{
            width: 100%;
        }
        .btn{
            margin-left: 800px;
            padding: 6px 20px;
        }
        .other-category li{
            height: 40px;
            line-height: 30px;
        }
        .other-category li a{
            padding: 0px 20px;
            display: block;
            height: 40px;
            text-align: left;
            line-height: 30px;
            color: #969795;
            width: 100%;
        }
        .other-category li a:hover{
            color: #000;
            background-color: #e6e7e4;
        }

    </style>
</head>
<body>

<header>
    <nav class="navbar navbar-fixed-top">
        <div class="container">
            <div class="collapse navbar-collapse">
                <ul class="nav navbar-nav ">
                    <li><a href="home">首页</a></li>
                    <li><a href="#">随笔</a></li>
                    <li><a href="#">心情</a></li>
                    <li><a href="link">友链</a></li>
                    <li><a href="about">关于</a></li>
                    <li><a href="../user/login">登录</a></li>
                </ul>
            </div>
        </div>
    </nav>
</header>
<div class="doc">
    <div class="container">
        <div class="blog">
            <div class="blog-list">
                <div class="blog-info">
                    <h3>文章内容</h3><hr/>
                    <h3><span>【原创】</span>${blog.title}</h3>
                    <div class="blog-content">

                        <div class="content">
                            <p>${blog.content}

                            </p>
                        </div>
                    </div>
                </div>
                <div class="blog-message">
                    <div class="message">
                        <h4>文章评论</h4><hr>
                        <form action="">
                            <p>用户名：<input type="text" name="username"></p>
                            <p><textarea rows="4" name="saytext"></textarea></p>
                            <p><button class="btn btn-info">发表评论</button></p>
                        </form>
                        <table>
                            <tr>
                                <td>三毛</td>
                                <td>2020-5-3 10:23:22</td>

                            </tr>
                            <tr>
                                <td>内容</td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>

        </div>
        <div class="other">
            <div class="other-list">
                <div class="other-item">
                    <h4><i class="glyphicon glyphicon-user"></i>关于我</h4><hr>
                    <p>职业：待就业</p>
                    <p>学校：西南民族大学</p>
                    <p>QQ:1428174641</p>
                    <p>邮箱:1428174641@qq.com</p>
                </div>
                <div class="other-item other-category">
                    <p>文章分类</p><hr>
                    <ul>
                        <li><a href="bloglist">所有文章</a></li>
                        <c:forEach items="${categories}" var="cs">
                            <li><a href="search?cid=${cs.id}&cname=${cs.categoryName}">${cs.categoryName}</a></li>
                        </c:forEach>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>

<footer>
    <div class="footer">
        <p class="copy">
            Copyright &copy; 2020.4-2020.x 页脚 All Rights Reserved
        </p>
    </div>
</footer>



<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/lib/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
