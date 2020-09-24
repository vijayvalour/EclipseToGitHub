<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>welcome Page :)</title>
</head>
<body bgcolor="cyan">
  
  <%  
  
      response.setHeader("Cache-Control","no-catche,no-store,must-revalidate");     
  
       if(session.getAttribute("name")==null || session.getAttribute("pass")==null)
    	   response.sendRedirect("Login.jsp");
  %>
  <h1>***Heloww***</h1>
  
  Mr./Mrs. :${name}
  
  <form action="Videos.jsp">
         <input type="submit" value="Videos">  
  </form>
  
  <form action="Logout">
         <input type="submit" value="logout">  
  </form>
  
</body>
</html>