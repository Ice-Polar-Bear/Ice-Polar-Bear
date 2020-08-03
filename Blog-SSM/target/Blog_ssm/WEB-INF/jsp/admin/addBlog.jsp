<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html class="x-admin-sm">

<head>
    <meta charset="UTF-8">
    <title>添加博客</title>
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
                    <form method="post" action="addBlog" enctype="multipart/form-data">

                        <div>
                            <label for="blog_title">博客标题：</label>
                            <input class="layui-input" type="text" id="blog_title" name="title" style="width:400px;">
                            <label for="category_id">博客分类：
                            <br>
                            <select class="layui-select" id="category_id" name="category" style="width:200px;" aria-placeholder="请输入文章分类">
                                <c:forEach items="${cs}" var="cs">
                                    <option value="${cs.id}" name="">${cs.categoryName}</option>
                                </c:forEach>

                            </select>
                            </label>
                            <div>

                            </div>
                            <div id="m-markdown" >
                                <textarea id="content" name="content" style="display:none;"></textarea>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="layui-card-body">
                    <button lay-filter="add" lay-submit="" class="layui-btn">发布博客</button>
                </div>

            </div>
        </div>
    </div>
</div>




<script type="text/javascript">
    layui.use(['form','layer','jquery'],function () {
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

        form.on('submit(add)',function (data) {
            var title = $("#blog_title").val();
            var category_id = $("#category_id").val();
            var content = $("#content").val();
            console.log(content);
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
                url:"addBlog",
                type:"post",
                data:{title:title,categoryid:category_id,content:content},
                success:function (data) {
                    layer.alert("添加成功！",{icon:6});
                }

            });
            return false;
        });
    });
</script>
<script>

</script>
</body>

</html>
