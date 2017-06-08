
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="login" scope="session"
	class="br.edu.up.dto.login.Login" />
<jsp:useBean id="folha" scope="session"
	class="br.edu.up.dto.folhapagamento.FolhaPagamentoDTO" />	
<%@page import="br.edu.up.dao.folhapagamento.*"%>

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
<title>listar folha de pagamento</title>
</head>
<body onload="validaLogin();">

	<table align="center" border="1">
		
		<%
			for(FolhaPagamentoDao fls : folha.getFolha()  ){
				out.println("<tr>");
				
				out.println("<td>");
				out.println(fls.getNome());
				out.println("</td>");
				
				out.println("<td>");
				out.println(fls.getCpf());
				out.println("</td>");
				
				out.println("<td>");
				out.println(fls.getAno());
				out.println("</td>");
				
				out.println("<td>");
				out.println(fls.getMes());
				out.println("</td>");
				
				out.println("<td>");
				out.println(fls.getHoras());
				out.println("</td>");
				
				out.println("<td>");
				out.println(fls.getValor());
				out.println("</td>");
				
				out.println("</tr>");
			}
		
		%>	
	
		
	
	
	</table>
	


	<form action = "inicial.jsp">
		<p align ="center"><input type="submit" value="voltar">	
	</form>
	<form id="deslogar"  method ="post" action="login.jsp">
	<input type="hidden" name="deslogar" value="on">
	<p align="center">
	</form>

</body>
</html>