<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Videos Page</title>
</head>
<body>
   <%
   
      response.setHeader("Cache-Control","no-catche,no-store,must-revalidate");   
   
      if(session.getAttribute("name")==null || session.getAttribute("pass")==null)
   	   response.sendRedirect("Login.jsp");
    %>
      <!-- <a href="https://www.youtube.com/watch?v=pU722vRd66A&t=3s">For JavaScript Click here</a> -->
      
      <iframe width="560" height="315" src="https://www.youtube.com/embed/pU722vRd66A" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
      
      <form action="Logout">
          <input type="submit" value="logout">
      </form>
</body>
</html>