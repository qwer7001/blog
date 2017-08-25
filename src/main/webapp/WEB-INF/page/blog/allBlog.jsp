<%--
  Created by IntelliJ IDEA.
  User: dllo
  Date: 17/8/23
  Time: 下午3:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>博客首页</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <script src="js/jquery-3.2.1.js" type="text/javascript"></script>
</head>
<body>
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                    data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/allBlog">博客</a>
        </div>
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li><a href="/addBlogPage">新建博客</a></li>
            </ul>
            <form class="navbar-form navbar-left">
                <div class="form-group">
                    <input type="text" class="form-control" id="text" placeholder="输入搜索的内容">
                </div>
                <button type="button" class="btn btn-default" id="btn">提交</button>
            </form>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#">${username}</a></li>
                <li><a href="/deleteUsername">切换用户</a></li>
            </ul>
        </div>
    </div>
</nav>

<div class="container">
    <table id="tab" class="table table-bordered">
        <thead>
        <tr>
            <th><strong>博客标题</strong></th>
            <th><strong>博客描述</strong></th>
            <th><strong>操作</strong></th>
        </tr>
        </thead>
        <tbody id="tbody">

        </tbody>
    </table>
</div>

<div class="container" align="center">
    <nav aria-label="Page navigation">
        <ul class="pagination">
            <li>
                <a href="#" aria-label="Previous">
                    <span aria-hidden="true">&laquo;</span>
                </a>
            </li>
            <li class="active"><a href="#">1</a></li>
            <li><a href="#">2</a></li>
            <li><a href="#">3</a></li>
            <li><a href="#">4</a></li>
            <li><a href="#">5</a></li>
            <li>
                <a href="#" aria-label="Next">
                    <span aria-hidden="true">&raquo;</span>
                </a>
            </li>
        </ul>
    </nav>
</div>
</body>
<script>

    // 添加
    function addBolg(id, title, des) {
        var tdLeft = $("<td></td>");
        var tdMid = $("<td></td>").html("<p>" + des + "</p>");
        var tdRight = $("<td></td>");
        $("<a href='#'>" + title + "</a>").appendTo(tdLeft).attr("showId", id).click(check);
        $("<a href='#'>删除</a>").appendTo(tdRight).click(del).attr("delId", id);
        var tr = $("<tr class='trr'></tr>").append(tdLeft).append(tdMid).append(tdRight).attr("id", "tr" + id);
        $("#tbody").prepend(tr);
    }

    // 搜索博客
    $("#btn").click(function () {
        $.ajax({
            type:"get",
            url:"/queryBlog",
            data:{title:$("#text").val()},
            success:function (res) {
                $(".trr").remove();
                for (var i = 0; i < res.length; i++) {
                    var b = res[i];
                    addBolg(b.id, b.title, b.des);
                }
            }
        })
    });

    // 查看一条
    var check = function () {
        var tid = $(this).attr("showId");
        $.ajax({
            url: "/showBlog",
            data: {tid: tid},
            success: function (result) {
                window.location.href = "/showBlogPage?title=" + result.title + "&content=" + result.content;
            }
        })
    };

    // 删除一条
    var del = function () {
        var bid = $(this).attr("delId");
        $.ajax({
            url: "/deleteBlog",
            data: {bid: bid},
            success: function (result) {
                $("#tr" + result).remove()
            }
        })
    };

    // 获取所有
    function getAllBolg() {
        $.ajax({
            url: "/getAll",
            success: function (result) {
                for (var i = 0; i < result.length; i++) {
                    var msg = result[i];
                    addBolg(msg.id, msg.title, msg.des);
                }
            }
        })
    }

    getAllBolg();

</script>
</html>
