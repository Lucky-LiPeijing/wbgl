<%--
  Created by IntelliJ IDEA.
  User: LiPeijing
  Date: 2017/9/12
  Time: 11:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Face Time后台管理系统</title>
    <link type="text/css" rel="stylesheet" href="css/style.css" />
    <script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="js/menu.js"></script>
    <script type="text/javascript">
        function onClick1() {
            document.getElementById("section_iframe").src="${ pageContext.request.contextPath }/adminPage/user/listAllUser.jsp";
        }
        function onClick2() {
            document.getElementById("section_iframe").src="${ pageContext.request.contextPath }/adminPage/microblog/listAllMicroblog.jsp";
        }
        function onClick3() {
            document.getElementById("section_iframe").src="${ pageContext.request.contextPath }/adminPage/review/listAllReview.jsp";
        }
        function onClick4() {
            document.getElementById("section_iframe").src="${ pageContext.request.contextPath }/adminPage/focus/listAllFocus.jsp";
        }
    </script>
</head>

<body>
<div class="top"></div>
<div id="header">
    <div class="logo">Face Time后台管理系统</div>
    <div class="navigation">
        <ul>
            <li>欢迎您！</li>
            <li><a href="">admin</a></li>
            <li><a href="">修改密码</a></li>
            <li><a href="">设置</a></li>
            <li><a href="${ pageContext.request.contextPath }/loginPage/login.jsp">退出</a></li>
        </ul>
    </div>
</div>
<div id="content">
    <div class="left_menu">
        <ul id="nav_dot">
            <li>
                <h4 class="M1"><span></span>用户管理</h4>
                <div class="list-item none" style="margin:0 auto; text-align: center">
                    <button name="1" onclick="onClick1()"><font size="4px"><b>显示用户</b></font></button>
                </div>
            </li>
            <li>
                <h4 class="M2"><span></span>微博管理</h4>
                <div class="list-item none" style="margin:0 auto; text-align: center">
                    <button name="2" onclick="onClick2()"><font size="4px"><b>显示微博</b></font></button>
                </div>
            </li>
            <li>
                <h4 class="M3"><span></span>回复管理</h4>
                <div class="list-item none" style="margin:0 auto; text-align: center">
                    <button name="3" onclick="onClick3()"><font size="4px"><b>显示回复</b></font></button>
                </div>
            </li>
            <li>
                <h4 class="M4"><span></span>关注管理</h4>
                <div class="list-item none" style="margin:0 auto; text-align: center">
                    <button name="4" onclick="onClick4()"><font size="4px"><b>显示关注</b></font></button>
                </div>
            </li>
        </ul>
    </div>
    <div class="m-right">
        <div class="right-nav">
            <div id="section">
                <iframe src="${ pageContext.request.contextPath }/adminPage/user/listAllUser.jsp" id="section_iframe" width="1325px" height="680px"></iframe>
            </div>
        </div>
        <div class="main">

        </div>
    </div>
</div>
<div class="bottom"></div>
<div id="footer"><p>Copyright©  2017李佩京版权所有 </p></div>
<script>navList(12);</script>
</body>
</html>

