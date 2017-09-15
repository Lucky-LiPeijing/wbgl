<%--
  Created by IntelliJ IDEA.
  User: LiPeijing
  Date: 2017/9/12
  Time: 23:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html>
<head></head>
<body>
<table border="0" width="600px">
    <tr>
        <td align="center" style="font-size:24px; color:#666"> 用户修改</td>
    </tr>
    <tr>
        <td align="right" >
            <a href="javascript:document.getElementById('saveForm').submit()">保存</a> &nbsp;&nbsp;
            <a href="javascript:history.go(-1)">退回 </a>
        </td>
    </tr>
</table>
<br/>
<br>
<div style="margin:0 auto; text-align: center; background: gainsboro; border: 2px #000 solid">
<s:form id="saveForm" action="user_update" method="post" namespace="/" theme="simple">
    <s:hidden name="uid" value="%{model.uid}"/>
    <table style="font-size:16px; text-align: center">
        <tr>
            <td>用户名：</td>
            <td><s:textfield name="username" value="%{model.username}"/></td>
        </tr>
        <tr>
            <td>密&nbsp;&nbsp;码：</td>
            <td><s:textfield name="password" value="%{model.password}"/></td>
        </tr>
        <tr>
            <td>昵&nbsp;&nbsp;称：</td>
            <td><s:textfield name="upname" value="%{model.upname}"/></td>
        </tr>
        <tr>
            <td>姓&nbsp;&nbsp;名：</td>
            <td><s:textfield name="uname" value="%{model.uname}"/></td>
        </tr>
        <tr>
            <td>性&nbsp;&nbsp;别：</td>
            <td><s:textfield name="usex" value="%{model.usex}"/></td>
        </tr>
        <tr>
            <td>年&nbsp;&nbsp;龄：</td>
            <td><s:textfield name="uage" value="%{model.uage}"/></td>
        </tr>
        <tr>
            <td>邮&nbsp;&nbsp;箱：</td>
            <td><s:textfield name="uemail" value="%{model.uemail}"/></td>
        </tr>
        <tr>
            <td>电&nbsp;&nbsp;话：</td>
            <td><s:textfield name="utel" value="%{model.utel}"/></td>
        </tr>
        <tr>
            <td>权&nbsp;&nbsp;限：</td>
            <td><s:textfield name="uauth" value="%{model.uauth}"/></td>
        </tr>
        <tr>
            <td>状&nbsp;&nbsp;态：</td>
            <td><s:textfield name="ustate" value="%{model.ustate}"/></td>
        </tr>
    </table>
</s:form>
</div>
</body>
</html>
