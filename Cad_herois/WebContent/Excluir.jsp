<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="dao.CadastroDao"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		
		try{
			CadastroDao cadDao = new CadastroDao();
		    int id = Integer.parseInt(request.getParameter("id"));
		  	
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		%>
</body>
</html>