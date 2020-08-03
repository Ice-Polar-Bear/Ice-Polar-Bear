<%--
  Created by IntelliJ IDEA.
  User: 赵德胤
  Date: 2020/5/10
  Time: 11:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>个人博客</title>
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

            background-color: #E9EAED;
        }
        .navbar{
            background-color: #fff;
            margin: 0px;
        }
        li a{
            color: black;
            font-size: 18px;
        }
        div{
            display: block;
        }
        .doc{
            padding: 54px 0px;
        }

        .container{
            width: 1400px;
            min-height: 100%;
            position: relative;
        }
        .collapse {
            float: right;
            margin-right: 300px !important;
        }
        .other-list{
            width: 350px;
            float:right;
        }
        .other-item{
            margin: 20px;
            padding: 10px;
            background-color: #fff;
        }
        .blog-list{
            width: 1000px;
            float: left;
            font-size: 15px;
        }
        .blog-item{
            margin: 20px;
            height: 260px;
            padding: 10px;
            line-height: 28px;
            background-color: #fff;
        }
        .blog-category{
            margin-left: 220px;
        }
        .blog-category a{
            color: black;
        }
        .list-title{
            margin: 20px;
            padding: 10px;
            background-color: #fff;
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
        footer{
            height: 60px;
            text-align: center;
            padding: 25px;
            position: absolute;
            width: 100%;

            background-color: #fff;
        }
        .blog-content{
            width: 920px;
            height: 180px;
        }
        .image{
            width: 200px;
            height: 180px;
        }
        .content{
            display: block;
            width: 700px;
            height: 160px;
            float: right;
        }
        .blog-image{
            display: block;
            width: 200px;
            float: left;
        }
        .read{
            color: rgb(54, 138, 138);
        }
        ul{
            padding: 0px;
            margin-top: 10px;
        }
        .blog-category li{
            /* float: left; */
            display: inline;
            margin-right: 30px;
        }
        .glyphicon{
            margin-right: 5px;
        }
        .blog-item span{
            color: cornflowerblue;
        }
        h3{
            margin: 0px;
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
        .blog-page{
            margin: 20px;
        }
    </style>
</head>
<body>
<header>
    <nav class="navbar navbar-fixed-top">
        <div class="container">
            <div class="collapse navbar-collapse">
                <ul class="nav navbar-nav">
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
                <div class="list-title">
                    <c:if test="${msg == 1}"><h2>全部文章</h2></c:if>
                    <c:if test="${msg == 0}"><h2>${cname}</h2></c:if>
                </div>
                <c:forEach items="${blogs}" var="blog" begin="0" end="5">
                    <div class="blog-item">
                    <h3><span>【原创】</span><a class="blog-title" href="blog?id=${blog.id}">${blog.title}</a></h3>
                    <div class="blog-content">
                        <a class="blog-image" href="#">
                            <img class="image" src="${pageContext.request.contextPath}/images/java.jpg"/>
                        </a>
                        <div class="content">
                            ${blog.content} ... <a class="read" href="blog?id=${blog.id}">阅读全文></a>
                        </div>
                        <div class="blog-category">
                            <ul>
                                <li><i class="glyphicon glyphicon-user"></i> 随波逐流</li>
                                <li><i class="glyphicon glyphicon-tags"></i> <a class="" href="search?cid=${blog.category.id}&cname=${blog.category.categoryName}">${blog.category.categoryName}</a></li>
                                <li><i class="glyphicon glyphicon-calendar"></i><fmt:formatDate value="${blog.createTime}" type="both"></fmt:formatDate> </li>
                                <li><i class="glyphicon glyphicon-eye-open"></i>5次浏览</li>
                                <li><i class="glyphicon glyphicon-comment"></i>15条评论</li>
                            </ul>
                        </div>
                    </div>

                </div>
                </c:forEach>
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
