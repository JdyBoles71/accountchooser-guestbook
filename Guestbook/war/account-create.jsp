<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="guestbook.UserServlet" %>
<%@ page import="java.util.List" %>
<%@ page import="javax.servlet.http.HttpSession" %>

<html>
<head>
<link type="text/css" rel="stylesheet" href="/stylesheets/main.css" />
</head>

<body>

	<%
	if (session.getAttribute("email") != null) {
    // The user is already signed in. let them sign out.
%>
	<p>
		Hello, you're already signed in 
		<%= UserServlet.getUserIdentifier(session) %>! (You can <a
			href="/signout">sign out</a>.)
	</p>
	<%
    } else {
	    // display the form
%>
	<p>Hello! Sign up to include your name with greetings you post.</p>
	<form name="signup" action="/user" method="post">
    <input type="hidden" name="form" value="signup">
		<table>
			<tr>
				<td>email:</td>
				<td><input type="text" id="email" name="email"></td>
			</tr>
			<tr>
				<td>display name:</td>
				<td><input type="text" id="nickName" name="nickName"></td>
			</tr>
			<tr>
				<td>picture url:</td>
				<td><input type="text" id="photoUrl" name="photoUrl"></td>
			</tr>
			<tr>
				<td>password:</td>
				<td><input type="password" id="password"></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="signup"></td>
			</tr>
		</table>
	</form>
	<%
		}
	%>
</body>
</html>