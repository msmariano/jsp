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
<title>Consultar folha</title>
</head>
<body onload="validaLogin();">


	<form  method="post" action="consultafolhapagamento.jsp">
		<p align ="center">
		<table align = "center">
		<tr>
		
		<td>CPF</td>
		<td><input type="text" name="cpf" ></td>
		
		</tr>
		</table>
		<p align ="center"><input type="submit" value="Consultar">
	
	</form>


	<form action = "inicial.jsp">
		<p align ="center"><input type="submit" value="voltar">	
	</form>
	<form id="deslogar"  method ="post" action="login.jsp">
	<input type="hidden" name="deslogar" value="on">
	<p align="center">
	</form>
	
	<%
	String cpf = request.getParameter("cpf");
	FolhaPagamentoDao fls = null;
	for(FolhaPagamentoDao flsBusca : folha.getFolha()  ){
		if(flsBusca.getCpf().equals(cpf))
		{
			fls = flsBusca;
			break;
		}
	}
	if(fls != null){
		out.println("<table align = \"center\" border=\"1\">");
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
		out.println("<table>");
	}
	
	%>

</body>
</html>