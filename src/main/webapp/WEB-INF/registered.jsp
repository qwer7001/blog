<%--
  Created by IntelliJ IDEA.
  User: dllo
  Date: 2017/8/23
  Time: 下午3:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>注册</title>

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <script src="js/jquery-3.2.1.js" type="text/javascript"></script>

    <link href="/css/jquery.city.bootstrap.css" rel="stylesheet" />
    <link href="/css/animate.min.css" rel="stylesheet" />
    <script src="/js/jquery.city.js"></script>
    <script src="/js/bootstrap.js"></script>

</head>
<body>

<br>
<br>
<br>
<br>
<center>
    <p style="color:red;font-size:16px;">${message}</p>
    <form class="form-inline" action="/addUser" method="post">
        <div class="form-group">
            <label for="exampleInputName2">用户名&nbsp;&nbsp;&nbsp;</label>
            <input name="name"  type="text" class="form-control" id="exampleInputName2" placeholder="请输入用户名">
        </div>
        <br>
        <div class="form-group">
            <label for="exampleInputEmail2">密&nbsp;&nbsp;&nbsp;码&nbsp;&nbsp;&nbsp;&nbsp;</label>
            <input name="password" type="password" class="form-control" id="exampleInputEmail2" placeholder="请输入密码">
        </div>
        <br>
        <div class="form-group">
            <label for="exampleInputEmail1">重复密码</label>
            <input name="password1" type="password" class="form-control" id="exampleInputEmail1" placeholder="请再次输入密码">
        </div>
        <br>
        <div class="form-group">
            <label for="exampleInputEmail3">电&nbsp;&nbsp;&nbsp;话&nbsp;&nbsp;&nbsp;&nbsp;</label>
            <input name="tel" type="text" class="form-control" id="exampleInputEmail3" placeholder="请输入电话">
        </div>
        <br>
        <div class="form-group">
            <label for="exampleInputEmail4">地&nbsp;&nbsp;&nbsp;址&nbsp;&nbsp;&nbsp;&nbsp;</label>
            <input name="address"  type="text" class="form-control" id="exampleInputEmail4" placeholder="请输入地址">
        </div>
        <br>
        <br>
        <input type="submit" value="提交注册"class="btn btn-danger" >
    </form>

</center>


</body>

<script>
    $(function () {
        $('#exampleInputEmail4').jcity({
            urlOrData: '/js/citydata.json',
            animate: { showClass: 'animated flipInX', hideClass: 'animated flipOutX' },
            onChoice: function (data) {
                console.log(data);
            }
        });
    });
</script>




</html>
