<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>   
    <title>显示评论</title>
     <style>
    body{
       background:#D3D3D3;
      }
    </style>
  </head>
  
  <body style="text-align:center;">
    <h2>评论列表</h2>
    <table width="60%" border="1" align="center" style="text-align: center;">
    	<tr>
    		<td>评论书名</td>
    		<td>评论人</td>
    		<td>评论时间</td>
    		<td>评论内容</td>
    		<td>操作</td>
    	</tr>
    	<tr>
    	        <td>余华</td>
    	        <td>江铃</td>
    	        <td>2019-12-1</td>
    	        <td>这本书作者写的很好</td>
    	        <td>
	    			<a href="#">删除</a>
	    		</td>
    	</tr>
    	<tr>
    	        <td>两只老虎的故事</td>
    	        <td>测试1</td>
    	        <td>2019-12-2</td>
    	        <td>很好看</td>
    	        <td>
	    			<a href="#">删除</a>
	    		</td>
    	</tr>
    	<%-- <c:forEach var="order" items="${orders }">
    		<tr>
    			<td>${order.id }</td>
	    		<td>${order.user.username }</td>
	    		<td>${order.ordertime }</td>
	    		<td>${order.price }</td>
	    		<td>${order.state==true?'已发货':'未发货' }</td>
	    		<td>
	    			<a href="${pageContext.request.contextPath }/manager/OrderDetailServlet?orderid=${order.id}">查看明细</a>
	    			<a href="#">删除</a>
	    		</td>
    		</tr>
    	</c:forEach> --%>
    	
	</table>
  </body>
</html>
