<%--
  Created by IntelliJ IDEA.
  User: LiPeijing
  Date: 2017/9/11
  Time: 9:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html>
<head>
    <title>Face Time</title>
    <link rel="stylesheet" href="css/style.css">
    <link href="css/popup-box.css" rel="stylesheet" type="text/css" media="all"/>
    <!--<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300italic,300,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
    <link href='//fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
-->
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords"
          content="Sign In And Sign Up Forms  Widget Responsive, Login Form Web Template, Flat Pricing Tables, Flat Drop-Downs, Sign-Up Web Templates, Flat Web Templates, Login Sign-up Responsive Web Template, Smartphone Compatible Web Template, Free Web Designs for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design"/>
    <script type="application/x-javascript"> addEventListener("load", function () {
        setTimeout(hideURLbar, 0);
    }, false);
    function hideURLbar() {
        window.scrollTo(0, 1);
    } </script>

    </script>
    <script src="js/jquery.min.js"></script>
    <script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
    <script type="text/javascript" src="js/modernizr.custom.53451.js"></script>
    <script>
        $(document).ready(function () {
            $('.popup-with-zoom-anim').magnificPopup({
                type: 'inline',
                fixedContentPos: false,
                fixedBgPos: true,
                overflowY: 'auto',
                closeBtnInside: true,
                preloader: false,
                midClick: true,
                removalDelay: 300,
                mainClass: 'my-mfp-zoom-in'
            });

        });
    </script>

</head>
<body>
<h1>Face Time</h1>
<div class="w3layouts">
    <div class="signin-agile">
        <h2>登录
        </h2>
        <s:form action="user_login" method="post" namespace="/">
            <h3 style="color: red"><s:actionerror/></h3>
            <input type="text" name="username" class="name" placeholder="用户名">
            <input type="password" name="password" class="password" placeholder="密码">
            <ul>
                <li>
                    <input type="checkbox" id="brand1" value="">
                    <label for="brand1"><span></span>记住密码</label>
                </li>
            </ul>
            <a href="#">忘记密码?</a><br>
            <div class="clear"></div>
            <input type="submit" value="登录">
        </s:form>
    </div>
    <div class="signup-agileinfo">
        <h3>加入我们</h3>
        <p>FaceTime的创办人是李佩京，他是哈佛大学的学生，之前毕业于阿兹利高中。
            最初，网站的注册仅限于哈佛学院的学生。在之后的两个月内，注册扩展到波士顿地区的其他高校，波士顿学院Boston College、
            波士顿大学Boston University、麻省理工学院、特福茨大学Tufts，以及罗切斯特大学Rochester、斯坦福Stanford、纽约大学NYU、
            西北大学和所有的常春藤名校。</p>
        <div class="more">
            <a class="book popup-with-zoom-anim button-isi zoomIn animated" data-wow-delay=".5s" href="#small-dialog">点击注册</a>
        </div>
    </div>
    <div class="clear"></div>
</div>
<div class="footer-w3l">
    <p class="agileinfo"> 2017登录和注册表单。李佩京版权所有
    </p>
</div>
<div class="pop-up">
    <div id="small-dialog" class="mfp-hide book-form">
        <s:form id="saveForm" action="user_save" method="post" namespace="/" theme="simple">
            <table style="font-size:16px">
                <s:hidden name="uid" value="%{model.uid}"/>
                <tr>
                    <td>用户名：</td>
                    <td><s:textfield name="username"/></td>
                </tr>
                <tr>
                    <td>密&nbsp;&nbsp;码：</td>
                    <td><s:textfield name="password"/></td>
                </tr>
                <tr>
                    <td>昵&nbsp;&nbsp;称：</td>
                    <td><s:textfield name="upname"/></td>
                </tr>
                <tr>
                    <td>姓&nbsp;&nbsp;名：</td>
                    <td><s:textfield name="uname"/></td>
                </tr>
                <tr>
                    <td>性&nbsp;&nbsp;别：</td>
                    <td><s:textfield name="usex"/></td>
                </tr>
                <tr>
                    <td>年&nbsp;&nbsp;龄：</td>
                    <td><s:textfield name="uage"/></td>
                </tr>
                <tr>
                    <td>邮&nbsp;&nbsp;箱：</td>
                    <td><s:textfield name="uemail"/></td>
                </tr>
                <tr>
                    <td>电&nbsp;&nbsp;话：</td>
                    <td><s:textfield name="utel"/></td>
                </tr>
                <tr>
                    <td>权&nbsp;&nbsp;限：</td>
                    <td><s:textfield name="uauth"/></td>
                </tr>
                <tr>
                    <td>状&nbsp;&nbsp;态：</td>
                    <td><s:textfield name="ustate"/></td>
                </tr>
            </table>
        </s:form>
        <a href="javascript:document.getElementById('saveForm').submit()">保存</a> &nbsp;&nbsp;
    </div>
</div>
</body>
</html>