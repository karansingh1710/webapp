<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LogOut</title>
</head>
<body>
<% 
session =request.getSession();
session.invalidate();
response.sendRedirect("index.jsp");
%>
</body>
</html>