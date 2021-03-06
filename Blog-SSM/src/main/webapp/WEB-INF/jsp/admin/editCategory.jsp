<%--
  Created by IntelliJ IDEA.
  User: 赵德胤
  Date: 2020/5/1
  Time: 15:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html class="x-admin-sm">

<head>
    <meta charset="UTF-8">
    <title>编辑分类</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/font.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/xadmin.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/xadmin.js"></script>

</head>
<body>
<div class="layui-fluid">
    <div class="layui-row">
        <form class="layui-form">
            <div class="layui-form-item">
                <label for="category" class="layui-form-label">
                    <span class="x-red">*</span>分类名称</label>
                <div class="layui-input-inline">
                    <input type="text" id="category" name="category" value="${category.categoryName}" required="" autocomplete="off" class="layui-input"></div>
                <div class="layui-form-mid layui-word-aux">
                </div></div>

            <div class="layui-form-item">
                <label class="layui-form-label"></label>
                <button class="layui-btn" lay-filter="add" lay-submit="">确认修改</button></div>
        </form>
    </div>
</div>
<script>layui.use(['form', 'layer','jquery'],
    function() {

        var form = layui.form,
            layer = layui.layer;



        //监听提交
        form.on('submit(add)',
            function(data) {
               $.ajax({
                   url:"updateCategory",
                   type:"post",
                   data:{name:$("#category").val(),id:${category.id}},
                   success:function () {
                       layer.alert("修改成功", {icon: 6}, function() {
                               //关闭当前frame
                               xadmin.close();
                               // 可以对父窗口进行刷新
                               xadmin.father_reload();
                           });
                   }
               });

                return false;
            });

    });</script>

</body>

</html>
