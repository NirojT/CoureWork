<%@page import="Entity.Message"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="style.css">
<link rel="stylesheet"
	href="https://www.w3schools.com/w3css/4/w3pro.css">

<title>Login</title>
</head>
<header>
	<text>LOGIN</text>
	
</header>
<style>
.ms{
margin-left: 600px;
padding-bottom: 50px;
color: red;

}
</style>

<div class="search-container">
	<a href="index.jsp">Home</a> <br> <a href="about.jsp">About Us</a>
	<a href="contact.jsp">Contact Us</a>
</div>
<body>
	<%-- <%su
String successMessage = (String) session.getAttribute("successMessage");
if (successMessage != null) {
    out.print("<p>" + successMessage + "</p>");
    
    %>
    <a href="index.jsp">HomePage</a>
    <%
    session.removeAttribute("successMessage");
}
%> --%>
<div class="ms">
	<%
	Message m = (Message) session.getAttribute("msg");
	if (m != null) {
	%>
	<div  <%=m.getCssClass()%>" role="alert">
		<%=m.getContent()%>
	</div>


	<%
	session.removeAttribute("msg");
	}
	%>
	</div>

	<form id="login-form" action="LoginServlets" method="POST">
		<label for="username">Username:</label> <input type="text"
			id="username" name="name"><br> <label for="password">Password:</label>
		<input type="password" id="password" name="password"><br>
		<br>
		<button type="submit" id="submit-btn">Login</button>
		<br>
		<a href="Register.jsp">Forgot Password?</a>

		<p>
			Don't have an account? <a href="Register.jsp">Register</a>
		</p>
	</form>
























</body>
<footer>
	<p>© VHI Cart 2023</p>
	<div class="col-md-6">
		<div class="list-inline">
			<a href="index.jsp">Home</a> <a> ~</a> <a href="about.jsp">About
				Us</a><a> ~</a> <a href="contact.jsp">Contact Us</a>
		</div>


	</div>
</footer>
</html>


