<%@page import="model.Cadastro"%>
<%@page import="dao.CadastroDao"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		
		try{
		  Cadastro cad = new Cadastro();
		  CadastroDao cadDao = new CadastroDao();
		  
	        cad.setNome(request.getParameter("nome"));
	        cad.setPoder(request.getParameter("poder"));
	        cad.setIdade(Integer.parseInt(request.getParameter("idade")));
	        cad.setProdutora(request.getParameter("produtora"));
		  	cadDao.inserir(cad);
		  	response.sendRedirect("index.jsp");
		  	
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		%>
</body>
</html>