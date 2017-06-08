<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Folha Pagamento</title>
</head>
<body>
	<form id ="formcalcular" method = "post" action="resultado.jsp">
		<table align = "center" border = "1">
			<tr>
			<td>Nome do funcionário</td>
			<td> <input name="nome" type="text" value =""></td>
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
		<p align ="center"><input type="submit" value="Calcular" >
	
	</form>

</body>
</html>