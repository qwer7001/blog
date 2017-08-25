<%--
  Created by IntelliJ IDEA.
  User: dllo
  Date: 17/8/23
  Time: 下午7:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>博客内容</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <script src="js/jquery-3.2.1.js" type="text/javascript"></script>
</head>
<body>
<div class="container">
<h1 id="h1">${param.title}</h1>
<hr>
<span id="sp">${param.content}</span>
</div><br><br>
<div class="container" align="right">
<a href="/allBlog"><button type="button" class="btn btn-info">返回</button></a>
</div>
</body>
<script>

</script>
</html>
