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
<div style="background: ghostwhite; border: 1px #000 solid; text-align: center; margin: auto">
    <table border="0" width="600px">
        <tr>
            <td align="center" style="font-size:24px; color:#666">评论</td>
        </tr>
        <tr>
            <td align="right">
                <a href="javascript:document.getElementById('saveForm').submit()">保存</a> &nbsp;&nbsp;
                <a href="javascript:history.go(-1)">退回 </a>
            </td>
        </tr>
    </table>
    <br/>
    <br>
    <s:form id="saveForm" action="review_save" method="post" namespace="/" theme="simple">
    <table style="font-size:16px">
            <s:hidden name="cid" value="%{model.cid}"/>
        <table style="font-size:16px">
            <tr>
                <td>uid：</td>
                <td><s:textfield name="uid"/></td>
            </tr>
            <tr>
                <td>mid：</td>
                <td><s:textfield name="mid"-/></td>
            </tr>
            <tr>
                <td>评论：</td>
                <td><s:textarea name="ccontent"/></td>
            </tr>
        </table>
        </s:form>
</div>
<br /><br /><br /><br />
<div style="background: ghostwhite; border: 1px #000 solid; text-align: center; margin: auto">
    <table border="0" width="900px">
        <tr>
            <td align="center" style="font-size:24px; color:#999">评论</td>
        </tr>
    </table>

    <br/>
    <s:iterator value="list" var="d">
    <table cellspacing="0" border="1" class="table1">
        <thead>
        <tr>
            <th width="450">评论编号</th>
            <th width="450">微博编号</th>
            <th width="450">用户编号</th>
            <th width="450">时间</th>
            <th width="450">状态</th>
        </tr>
        </thead>
        <tbody>

        <tr class="tabled2">
            <td align="center"><s:property value="#d.cid"/></td>
            <td align="center"><s:property value="#d.mid"/></td>
            <td align="center"><s:property value="#d.uid"/></td>
            <td align="center"><s:property value="#d.ctime"/></td>
            <td align="center"><s:property value="#d.cstate"/></td>

        </tr>
        <tr>
            <td align="center" colspan="4"><s:property value="#d.ccontent"/></td>
            <td align="center"><a
                    href="${ pageContext.request.contextPath }/review_delete.action?cid=<s:property value="#d.cid"/> "><img
                    src="/adminPage/images/delete.png"></a></td>
        </tr>
        </tbody>

    </table>
    <br/><br/>
    </s:iterator>
    <br/>

    <table border="0" cellspacing="0" cellpadding="0" width="900px">
        <tr>
            <td align="right">
                <span>第<s:property value="currPage"/>/<s:property value="totalPage"/> 页</span>
                <span>总记录数<s:property value="totalCount"/> &nbsp;每页显示<s:property value="pageSize"/> </span>
                <span>
                <s:if test="currPage != 1">
                    <a href="${ pageContext.request.contextPath }/review_mfindAll.action?currPage=1">[首页]</a>&nbsp;&nbsp;
                    <a href="${ pageContext.request.contextPath }/review_mfindAll.action?currPage=<s:property value="currPage-1" />">[上一页]</a>&nbsp;&nbsp;
                </s:if>
                <s:if test="currPage != totalPage">
                    <a href="${ pageContext.request.contextPath }/review_mfindAll.action?currPage=<s:property value="currPage+1" />">[下一页]</a>&nbsp;&nbsp;
                    <a href="${ pageContext.request.contextPath }/review_mfindAll.action?currPage=<s:property value="totalPage" />[尾页]</a>&nbsp;&nbsp;
                </s:if>
            </span>
        </td>
    </tr>
</table>
</div>
</body>
</html>
