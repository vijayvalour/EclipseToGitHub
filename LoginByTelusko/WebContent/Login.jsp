<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>
</head>
<body bgcolor="cyan">
    <form action="Login" method="post">
    Enter Username :<input id="name" type="text" name="name"><br/><br/>
    Enter Password : <input id="password" type="password"name="password"><br/><br/>
    <input type="submit" value="login" id="login">
    </form>
    <form action="Introduction.jsp">
         <input type="submit" value="Introduction">
    </form>
</body>
</html>