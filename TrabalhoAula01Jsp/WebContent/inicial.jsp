<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:useBean id="funcionarios" scope="session" class="br.edu.up.dto.funcionario.FuncionarioDTO"/>
<jsp:useBean id="login" scope="session"
	class="br.edu.up.dto.login.Login" />
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
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cálculo de Folha de Funcionários</title>
</head>
<body onload="validaLogin();">
	<p align = "center" ><b><a><font size="10" style="background-color:powderblue;">Cálculo de Folha de Pagamento</font></a></b></p>

<p align = "center"><a href ="cadastrarfuncionario.jsp" >Cadastrar funcionário</a></p>
<p align = "center"><a href ="folhapagamento.jsp" >Cadastrar folha de pagamento</a></p>
<p align = "center"><a href ="folhapagamento.jsp" >Consultar folha de pagamento</a></p>
<p align = "center"><a href ="folhapagamento.jsp" >Listar folhas de pagamento</a></p>

<form id="deslogar"  method ="post" action="login.jsp">
	<input type="hidden" name="deslogar" value="on">
	<p align="center">
	<input type="submit" value="sair">
	
</form>






</body>
</html>