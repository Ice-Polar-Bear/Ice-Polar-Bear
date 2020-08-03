<%--
  Created by IntelliJ IDEA.
  User: 赵德胤
  Date: 2020/5/10
  Time: 10:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>关于博主</title>
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
        div{
            display: block;
        }
        li a{
            color: #000;
            font-size: 18px;
        }
        .container{
            width: 1400px;
            position: relative;
            padding-left: 5px;
        }
        .collapse {
            float: right;
            margin-right: 300px !important;
        }
        .doc{
            height: 92%;
            padding: 54px 0px;
        }
        .footer{
            /* height: 61px; */
            text-align: center;
            padding: 2.2rem;
            width: 100%;

            background-color: #fff;
        }
        .footer p{
            margin-bottom: 0px;
        }
        .about{
            height: 500px;
            margin: 20px;

            padding: 10px;
            background-color: #fff;
        }
        h3{
            padding-left: 1rem;
            margin-bottom: 1rem;
            line-height: 1.5rem;
            font-size: 2rem;
            font-weight: 700;
            border-left: .25rem solid #6bc30d;
        }
        section{
            padding: 20px;
        }
        section p{
            margin: 1.5rem 0;
            padding-left: 15px;
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

        <div class="about">
            <article>
                <section>
                    <h3>关于本站</h3>
                    <p>本站目标是建立一个个人的学习和记录博客，未来期望开发更多用户和评论等模块</p>
                    <p>制作本网站主要用于个人的学习和框架的熟悉摸索，其中运用了现成公开的模板</p>
                    <p>例如：bootstrap等，所以严禁商业使用</p>
                </section>
            </article>

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
