<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="jakarta.servlet.http.HttpSession"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome Page</title>

<style>
body {
	align-items: center;
	font-family: 'Arial', sans-serif;
	justify-content: center;
	height: 100vh;
	margin: 0;
	background-image: url(background.webp);
	background-size: cover;
	background-position: center;
	background-repeat: no-repeat;
	color: #333;
	display: flex;
	flex-direction: column;
}

.container {
	width: 600px;
	padding: 20px;
	background-color: #FBF8F1;
	border-radius: 10px;
	box-shadow: 0 0 10px rgba(0, 0, 1, 0.5);
	text-align: center;
}

a {
	text-decoration: none;
}

#me {
	text-decoration: none;
	color: green;
}

#me:hover {
	font-size: 16px;
	text-transform: uppercase;
}

</style>
</head>
<body>
	<%
	HttpSession session2 = request.getSession();
	if (session2 != null && session2.getAttribute("username") != null) {
		String username = (String) session2.getAttribute("username");
		username = username.toUpperCase();
	%>
	<div class="container">
		<h1>
			Welcome,
			<%=username%>!
		</h1>
		<p>We're delighted to have you on our platform.</p>
		<p>
			Explore, learn, and mail <a id="me"
				href="mailto:apnacode.karan@gmail.com">Me</a>
		</p>
		<p>Feel free to stay as long as you like, and when you're ready</p>

		<p>
			You can <a href='logout.jsp'>LOGOUT</a> securely.
		</p>

	</div>
	<%
	} else {
	response.sendRedirect("login.jsp");
	}
	%>

</body>
</html>