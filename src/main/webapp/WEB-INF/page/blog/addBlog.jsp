<%--
  Created by IntelliJ IDEA.
  User: dllo
  Date: 17/8/23
  Time: 下午5:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>添加页面</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <script src="js/jquery-3.2.1.js" type="text/javascript"></script>
</head>
<body>
<br>
<br>
<form class="form-horizontal" action="/allBlog">
    <div class="container">
        <label for="input1" class="col-sm-2 control-label">标题</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" id="input1">
        </div>
    </div><br>
    <div class="container">
        <label for="input2" class="col-sm-2 control-label">描述</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" id="input2" placeholder="请简要描述一下内容">
        </div>
    </div><br>
    <div class="container">
        <label for="input3" class="col-sm-2 control-label">内容</label>
        <div class="col-sm-10">
            <textarea class="form-control" rows="20" id="input3" placeholder="请输入内容"></textarea>
        </div>
    </div><br>
    <div class="container" align="center">
        <button id="btn" class="btn btn-primary" type="submit">提交</button>
        <a href="/allBlog"><button type="button" class="btn btn-default">返回</button></a>
    </div>
</form>
</body>
<script>
    $("#btn").click(function () {
        $.ajax({
            type:"get",
            url:"/addBlog",
            data:{title:$("#input1").val(),
                  des:$("#input2").val(),
                  content:$("#input3").val()}
        })
    })
</script>
</html>

