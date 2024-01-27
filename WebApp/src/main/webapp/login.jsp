<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<link href="loginStyle.css" rel="stylesheet">
</head>
<body>
	<div class="container">
	<h2>LogIn</h2>
		<form method="post" action="login">
			<label for="username">Username</label><br>
			<input name="username" id="username" type="text"><br>
			<label for="password">Password</label><br>
			<input name="password" id="password" type="password" required><br>
			
			<button type="submit">LogIn</button>
		</form>
		<p>
			<a href='index.jsp'>Back To Home</a>
		</p>
	<%
		String error = request.getParameter("error");
		String status = request.getParameter("status");
		if (error != null && error.equals("1")) {
		%>
		<p style="color: red">invalid username or password. Please try
			again</p>
		<%
		}
		if (status != null && status.equals("registered")) {
		%>
		<p style="color: green">User Registered Successfully.</p>
		<%
		}
		%>
	</div>
</body>
</html>