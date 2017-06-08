<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:useBean id="funcionario" scope="page" class="br.edu.up.dao.funcionario.FuncionarioDao"/>
<jsp:useBean id="funcionarios" scope="session" class="br.edu.up.dto.funcionario.FuncionarioDTO"/>
<%@page import="br.edu.up.dao.funcionario.FuncionarioDao"%>

<jsp:setProperty name="funcionario" property="*"/>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastro de Funcionário</title>
</head>
<body>
	
	<form id ="formcalcular" method = "post" action="cadastrarfuncionario.jsp">
		<table align = "center" border = "1">
			<tr>
			<td>Nome do funcionário</td>
			<td> <input name="nome" type="text" value =""></td>
			</tr>
			<tr>
			<td>CPF</td>
			<td> <input name = "cpf" type="text" value =""></td>
			</tr>
		</table>
		<p align ="center"><input type="submit" value="cadastrar" >
	</form>
	<form action = "inicial.jsp">
		<p align ="center"><input type="submit" value="voltar">	
	</form>
</body>
<table border = "1">
<%
	if(request.getParameter("nome")!= null && !request.getParameter("nome").equals("")){
		
		
		funcionarios.setFuncionario(funcionario);
		
	}
	
	if(funcionarios.getFuncionarios().size() > 0){
		for(FuncionarioDao f : funcionarios.getFuncionarios()){%>
		<tr><td>	<%out.println(f.getNome());%> </td><td><%out.println(f.getCpf());%>    </td></tr>
		<%}
	
	}


%>
</table>
</html>