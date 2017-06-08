<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:useBean id="login" scope="session"
	class="br.edu.up.dto.login.Login" />
<%@page import="java.util.Date"%>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>

<%
	boolean deslogar = false;
	if (request.getParameter("usuario") != null) {
		login.setUsuario(request.getParameter("usuario"));
	}
	if (request.getParameter("senha") != null) {
		login.setSenha(request.getParameter("senha"));
	}

	if (request.getParameter("deslogar") != null && request.getParameter("deslogar").equals("on")) {
		deslogar = true;
		login.setLogado(false);
		login.setSenha("");
		login.setUsuario("");

	}

	if (login != null && !deslogar) {
		if (login.getUsuario() != null) {
			if (login.getSenha().equals("1234") && login.getUsuario().equals("marcelo")) {
				login.setLogado(true);
				login.setDataLogin(new Date());
				//out.println("Usuario logado : "+ login.getUsuario());
			} else {

				login.setLogado(false);

			}
		}
	}
%>

<script type="text/javascript">
	function validaLogin() {
<%if (login.isLogado()) {
				out.println("document.getElementById(\"telainicial\").submit();");
			}
	else if (request.getParameter("logar") != null 
	&& request.getParameter("logar").equals("on")) {
	out.println("alert('Usuário ou senha inválido');");
}
			%>
	}
</script>


<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Cadastro de folha de pagamento login</title>
</head>
<body onload="validaLogin();">
	<form id="login" method="post" action="login.jsp">
		<input type="hidden" name="logar" value="on">
		<table align="center" border="1">
			<tr>
				<td>Usuário</td>
				<td><input name="usuario" type="text" value=""></td>
			</tr>
			<tr>
				<td>Senha</td>
				<td><input name="senha" type="password" value=""></td>
			</tr>
		</table>
		<p align="center">
			<input type="submit" value="Login">
	</form>
	<form id="telainicial" method="post" action="inicial.jsp"></form>





</body>



</html>