<%--
  Created by IntelliJ IDEA.
  User: dllo
  Date: 2017/8/23
  Time: 下午3:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>登录</title>

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <script src="js/jquery-3.0.0.js" type="text/javascript"></script>
</head>

<body>
<br>
<br>
<br>
<br>
<center>

<p style="color:red;font-size:16px;">${error}</p>
    <form class="form-inline" action="/login" method="post">
        <div class="form-group">
            <label for="exampleInputName2">用户名</label>
            <input id="username" name="name" type="text" class="form-control" id="exampleInputName2" placeholder="请输入用户名">
            <p id="p1" style="color:red;font-size:16px;"></p>
        </div>
        <br>
        <br>
        <div class="form-group">
            <label for="exampleInputEmail2">密&nbsp;&nbsp;&nbsp;码</label>
            <input name="password" type="password" class="form-control" id="exampleInputEmail2" placeholder="请输入密码">
        </div>
        <br>
        <br>
        <button type="submit" class="btn btn-info" id="btn">登录</button>
        <a class="btn btn-warning" href="/registered">注册</a>
    </form>

</center>



</body>


<script>





    

   
    
    
</script>



</html>
