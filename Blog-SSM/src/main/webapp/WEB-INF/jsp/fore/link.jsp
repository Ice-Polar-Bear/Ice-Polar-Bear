<%--
  Created by IntelliJ IDEA.
  User: 赵德胤
  Date: 2020/5/10
  Time: 11:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
            height: 100%;
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
            height: 93%;
            padding: 54px 0px;
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
        a{
            color: black;
        }
        a:hover{
            color: rgb(66, 130, 248);
            text-decoration: none;
        }
        footer{
            height: 64px;
            text-align: center;
            padding: 25px;
            position: absolute;
            width: 100%;

            background-color: #fff;
        }
        .link{
            padding: 20px;
            margin: 20px;
            background-color: #fff;
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
        <div class="link">
            <p>链接说明：我的博客大部分是按照下面这个博客做的，喜欢的可以去看看。</p>
            <a href="https://www.yanshisan.cn/Blog/Index" target="_blank"><button class="btn btn-info">燕十三</button></a>
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
