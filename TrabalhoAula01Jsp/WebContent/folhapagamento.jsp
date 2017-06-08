<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="login" scope="session"
	class="br.edu.up.dto.login.Login" />
	
<jsp:useBean id="folhaPagamentoDAO" scope="request"
	class="br.edu.up.dao.folhapagamento.FolhaPagamentoDao" />

<jsp:useBean id="folha" scope="session"
	class="br.edu.up.dto.folhapagamento.FolhaPagamentoDTO" />	
	
<jsp:setProperty name="folhaPagamentoDAO" property="*"/>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script type="text/javascript">

function validaLogin() {
<%if (!login.isLogado()) {
	out.println("document.getElementById(\"deslogar\").submit();");
}
	%>
}
</script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Cadastrar Folha Pagamento</title>
</head>
<body onload="validaLogin();">
	<form id ="formcalcular" method = "post" action="folhapagamento.jsp">
		<table align = "center" border = "1">
			<tr>
			<td>Nome do funcionário</td>
			<td> <input name="nome" type="text" value =""></td>
			</tr>
			<tr>
			<td>CPF do funcionário</td>
			<td> <input name="cpf" type="text" value =""></td>
			</tr>
			<tr>
			<td>Mês</td>
			<td> <input name = "mes" type="text" value =""></td>
			</tr>
			<tr>
			<td>Ano</td>
			<td><input name = "ano" type="text" value =""></td>
			</tr>
			<tr>
			<td>Horas trabalhadas</td>
			<td><input name = "horas" type="text" value =""></td>
			</tr>
			<tr>
			<td>Valor da Hora</td>
			<td><input name = "valor" type="text" value =""></td>
			</tr>
		
		</table>
		<p align ="center"><input type="submit" value="Cadastrar" >
	
	</form>
	<form action = "inicial.jsp">
		<p align ="center"><input type="submit" value="voltar">	
	</form>
	<form id="deslogar"  method ="post" action="login.jsp">
	<input type="hidden" name="deslogar" value="on">
	<p align="center">
	
	
</form>

</body>
<%
if(request.getParameter("nome")!= null && !request.getParameter("nome").equals("")){
	
	out.println(folhaPagamentoDAO.getCpf());
	folha.getFolha().add(folhaPagamentoDAO);
	out.println("Folha cadastrada");
}

%>

</html>