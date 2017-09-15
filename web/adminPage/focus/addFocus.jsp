<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: LiPeijing
  Date: 2017/9/12
  Time: 23:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%@ taglib prefix="yyyy-MM-ddhh" uri="/struts-tags" %>
<%@ page import="java.util.*" %>
<html>
<head></head>
<body>
<table border="0" width="600px">
    <tr>
        <td align="center" style="font-size:24px; color:#666">关注</td>
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
<s:form id="saveForm" action="review_save" method="post" namespace="/" theme="simple">
    <table style="font-size:16px">
        <s:hidden name="fid" value="%{model.fid}"/>
        <table style="font-size:16px">
            <tr>
                <td>uid：</td>
                <td><s:textfield name="uid" /></td>
            </tr>
            <tr>
                <td>sid：</td>
                <td><s:textfield name="sid" /></td>
            </tr>
    </table>
</s:form>
</body>
</html>
