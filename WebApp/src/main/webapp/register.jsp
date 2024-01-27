<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register Page</title>
<link href="registerStyle.css" rel="stylesheet">
</head>
<body>
	<div class="container">
	<h2>Register</h2>
		<form method="post" action="register">
			<label for="username">Username</label><br>
			<input name="username" id="username" type="text" ><br>
			<label for="email">Email</label><br>
			<input name="email" id="email" type="email"><br>
			<label for="password">Password</label><br>
			<input name="password" id="password" type="password" required><br>
			
			<button type="submit">Register</button>
		</form>
		<p>
			<a href='index.jsp'>Back To Home</a>
		</p>
		<%
		String status = request.getParameter("status");
		%>
		<%
		if (status != null && status.equals("registered")) {
		%>
		<p style="color: green">User Registered Successfully.</p>
		<%
		} else if (status != null && status.equals("exists")) {
		%>
		<p style="color: red">User Already Exists.</p>
		<%
		}
		%>
	</div>
</body>
</html>