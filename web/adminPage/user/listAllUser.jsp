<%--
  Created by IntelliJ IDEA.
  User: LiPeijing
  Date: 2017/9/8
  Time: 22:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<html>
<head>
    <style type="text/css">
        .table1{
            border:1px solid #ddd;
            width:900px;

        }
        thead{
            background-color:lightblue;
        }

    </style>
</head>
<body>
<table border="0" width="900px">
    <tr>
        <td align="center" style="font-size:24px; color:#999">用户管理</td>
    </tr>
</table>

<br/>

<table cellspacing="0" border="1" class="table1">
    <thead>
    <tr>
        <th width="450">用户编号</th>
        <th  width="450">用户名</th>
        <th  width="450">密码</th>
        <th  width="450">昵称</th>
        <th  width="450">姓名</th>
        <th  width="450">性别</th>
        <th  width="450">年龄</th>
        <th  width="450">邮箱</th>
        <th  width="450">电话</th>
        <th  width="450">权限</th>
        <th  width="450">状态</th>
        <th  width="450">操作类型</th>
        <th  width="450">操作类型</th>
    </tr>
    </thead>
    <tbody>
    <s:iterator value="list" var="d">
    <tr class="tabled2">
        <td align="center"><s:property value="#d.uid" /></td>
        <td align="center"><s:property value="#d.username" /></td>
        <td align="center"><s:property value="#d.password" /></td>
        <td align="center"><s:property value="#d.upname" /></td>
        <td align="center"><s:property value="#d.uname" /></td>
        <td align="center"><s:property value="#d.usex" /></td>
        <td align="center"><s:property value="#d.uage" /></td>
        <td align="center"><s:property value="#d.uemail" /></td>
        <td align="center"><s:property value="#d.utel" /></td>
        <td align="center"><s:property value="#d.uauth" /></td>
        <td align="center"><s:property value="#d.ustate" /></td>
        <td align="center"><a href="${ pageContext.request.contextPath }/user_edit.action?uid=<s:property value="#d.uid"/> "><img src="/adminPage/images/edit.png"></a> </td>
        <td align="center"><a href="${ pageContext.request.contextPath }/user_delete.action?uid=<s:property value="#d.uid"/> "><img src="/adminPage/images/delete.png"></a> </td>
    </tr>
    </tbody>
    </s:iterator>
    <a href="${ pageContext.request.contextPath }/user_saveUI.action"><img src="/adminPage/images/add.png">添加用户</a>
</table>
<br/>

<table border="0" cellspacing="0" cellpadding="0"  width="900px">
    <tr>
        <td align="right">
            <span>第<s:property value="currPage" />/<s:property value="totalPage" /> 页</span>
            <span>总记录数<s:property value="totalCount"/> &nbsp;每页显示<s:property value="pageSize" /> </span>
            <span>
                <s:if test="currPage != 1">
                    <a href="${ pageContext.request.contextPath }/user_findAll.action?currPage=1">[首页]</a>&nbsp;&nbsp;
                    <a href="${ pageContext.request.contextPath }/user_findAll.action?currPage=<s:property value="currPage-1" />">[上一页]</a>&nbsp;&nbsp;
                </s:if>
                <s:if test="currPage != totalPage">
                    <a href="${ pageContext.request.contextPath }/user_findAll.action?currPage=<s:property value="currPage+1" />">[下一页]</a>&nbsp;&nbsp;
                    <a href="${ pageContext.request.contextPath }/user_findAll.action?currPage=<s:property value="totalPage" />[尾页]</a>&nbsp;&nbsp;
                </s:if>
            </span>
        </td>
    </tr>
</table>
</body>
</html>