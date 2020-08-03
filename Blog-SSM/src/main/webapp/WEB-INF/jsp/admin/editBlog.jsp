<%--
  Created by IntelliJ IDEA.
  User: 赵德胤
  Date: 2020/5/1
  Time: 14:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html class="x-admin-sm">

<head>
    <meta charset="UTF-8">
    <title>编辑博客</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,user-scalable=yes, minimum-scale=0.4, initial-scale=0.8,target-densitydpi=low-dpi" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/font.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/xadmin.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/markdown/css/editormd.min.css">
    <link rel="shortcut icon" href="https://pandao.github.io/editor.md/favicon.ico" type="image/x-icon" />
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js" ></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/markdown/editormd.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/lib/layui/layui.js" charset="utf-8"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/xadmin.js"></script>

</head>
<body>

<div class="layui-fluid">
    <div class="layui-row layui-col-space15">
        <div class="layui-col-md12">
            <div class="layui-card">
                <div class="layui-card-body ">
                    <form method="post" action="" enctype="multipart/form-data">

                        <div>
                            <label for="blog_title">博客标题：</label>
                            <input class="layui-input" type="text" id="blog_title" name="title" style="width:400px;" value="${blog.title}">
                            <label for="category_id">博客分类：</label>
                            <br>
                            <select class="layui-select" id="category_id" name="category.catetoryName" style="width:200px;" aria-placeholder="请输入文章分类">
                                <c:forEach items="${categories}" var="cs">
                                    <c:if test="${cs.categoryName}==${blog.category.categoryName}">
                                        <option value="${cs.id}" selected="${blog.category.categoryName}">${cs.categoryName}</option>
                                    </c:if>
                                    <option value="${cs.id}" >${cs.categoryName}</option>
                                </c:forEach>

                            </select>
                            <div>

                            </div>
                            <div id="m-markdown" >
                                <textarea id="content" name="content" style="display:none;">${blog.content}</textarea>
                            </div>
                        </div>
                        <div class="layui-card-body">
                            <button class="layui-btn" lay-filter="edit" lay-submit="">确认修改</button>
                        </div>
                    </form>
                </div>


            </div>
        </div>
    </div>
</div>

<script type="text/javascript">
    layui.use(['form', 'layer','jquery'],
        function() {
            var $ = jQuery = layui.$;
            var form = layui.form,
                layer = layui.layer;

            var testEditor;

            $(function() {
                testEditor = editormd("m-markdown", {
                    width   : "100%",
                    height  : 640,
                    syncScrolling : "single",
                    path    : "${pageContext.request.contextPath}/markdown/lib/"
                });

            });
            //监听提交
            form.on('submit(edit)',
                function(data) {
                    var title = $("#blog_title").val();
                    var category_id = $("#category_id").val();
                    var content = $("#content").val();


                    console.log(category_id);
                    if(title == null || title == ''){
                        layer.alert("标题不能为空");
                        return false;
                    }
                    if(category_id == null || category_id == ''){
                        layer.alert("分类不能为空");
                        return false;
                    }
                    if(content == null || content == ''){
                        layer.alert("内容不能为空");
                        return false;
                    }
                    $.ajax({
                        url:"updateBlog",
                        type:"post",
                        data:{id:${blog.id},title:title,categoryid:category_id,content:content},
                        success:function (data) {
                            layer.alert("修改成功！",{icon:6},function () {
                               xadmin.close();
                               xadmin.father_reload();
                            });
                        }

                    });

                    return false;
                });

        });
</script>

</body>

</html>
