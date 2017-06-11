<%--
  Created by IntelliJ IDEA.
  User: pipher
  Date: 2017/6/11
  Time: 9:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>SSM新闻发布系统</title>

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/background/resources/css/reset.css" media="screen"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/background/resources/css/style.css" media="screen"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/background/resources/css/invalid.css" media="screen"/>
    <!-- jQuery -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/background/resources/scripts/jquery-1.3.2.min.js"></script>
    <!-- jQuery Configuration -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/background/resources/scripts/simpla.jquery.configuration.js"></script>
    <!-- Facebox jQuery Plugin -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/background/resources/scripts/facebox.js"></script>
    <!-- jQuery WYSIWYG Plugin -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/background/resources/scripts/jquery.wysiwyg.js"></script>

    <script type="text/javascript">
        function checkForm(){
            var userName = $("#userName").val();
            var password = $("#password").val();
            if(userName==null || userName=="" ){
                alert("用户名不能为空！");
                return false;
            }else if(password==null||password==""){
                alert("密码不能为空！");
                return false;
            }
            return true;
        }
    </script>
</head>
<body id="login">
<div id="login-wrapper" class="png_bg">
    <div id="login-top">
        <h2>新闻发布系统-后台管理</h2>
    </div>

    <div id="login-content">
        <form action="${pageContext.request.contextPath}/user/login.do" method="post" onsubmit="return checkForm()">
            <p>
                <label>用户名:</label>
                <input type="text" id="userName" name="userName" value="${user.userName}"/>
            </p>
            <p>
                <label>密码:</label>
                <input type="text" id="password" name="password" value="${user.password}"/>
            </p>
            <div class="clear"></div>
            <input class="button" type="submit" value="登录"/>
        </form>

    </div>

</div>
</body>
</html>
<script type="text/javascript">
    if("${errorMsg}" != ""){
        alert("${errorMsg}");
    }
</script>
