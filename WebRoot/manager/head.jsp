<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>  
    <title>后台页头</title>
    <style>
      body{
        background:#D3D3D3;
      }
    </style>
  </head>
  
  <body style="text-align:center;">
    <h1>心悦图书城后台管理</h1>
      <c:if test="${u!=null }"> 
                  欢迎${u.username }来到后台管理
      </c:if>
      <a href="${pageContext.request.contextPath }/manager/AdminLogoutServlet" target="_top">注销</a>
  </body>
</html>
<script>
 
</script>