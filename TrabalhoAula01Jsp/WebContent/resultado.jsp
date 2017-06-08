<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Resultado</title>
</head>
<body>
	<% 
		Double salBruto = new Double(0L);
		Double inss = new Double(0L);
		Double fgts = new Double(0L);
		Double salLiquido =  new Double(0L);
		Double ir =  new Double(0L);
		Double perIR = new Double(0);
		Double descINSS = new Double(0);
		Double horas = Double.parseDouble(request.getParameter("horas"));
		Double valor = Double.parseDouble(request.getParameter("valor"));
		salBruto =  horas *valor;
		
		if(salBruto > 1903.98 && salBruto <= 2826.65){
			perIR = 0.075;
		}
		else if(salBruto > 2826.65 && salBruto <= 3751.05){
			perIR = 0.15;
		}
		else if(salBruto > 3751.05 && salBruto <= 4664.68){
			perIR = 0.225;
		}
		else if(salBruto > 4664.68){
			perIR = 0.275;
		}
		//Desconto INSS
		if(salBruto <= 1399.12 ){
			descINSS = salBruto*0.08;
		}
		else if(salBruto > 1399.12 && salBruto <= 2331.88){
			descINSS = salBruto*0.09;
		}
		else if(salBruto > 2331.88 && salBruto <= 4663.75){
			descINSS = salBruto*0.11;
		}
		else if(salBruto > 4663.75){
			descINSS = 513.01;
		}
		
		ir = salBruto*perIR;
		inss = descINSS;
		fgts = salBruto*0.08;
		salLiquido = salBruto - ir - inss;
		
		
	%>
	<div>
	<table>
		<tr><td>Nome : <% out.println(request.getParameter("nome"));%></td></tr>
		<tr><td>Mes : <% out.println(request.getParameter("mes"));%></td></tr>
		<tr><td>Ano : <% out.println(request.getParameter("ano"));%></td></tr>
		<tr><td>Horas : <% out.println(request.getParameter("horas"));%></td></tr>
		<tr><td>Valor : <% out.println(request.getParameter("valor"));%></td></tr>
	</table>
	</div>
	<div>
	<form id ="voltar" action="folhapagamento.jsp">
		<table align = "center" border = "1">
			<tr>
			<td>Salário Bruto</td>
			<td><%out.println(salBruto);%>
				${salBruto}
			</td>
			</tr>
			<tr>
			<td>IR</td>
			<td>
				<%out.println(ir);%>
				${ir}
			</td>
			</tr>
			<tr>
			<td>INSS</td>
			<td>
				<%out.println(inss);%>
				${inss}
			</td>
			</tr>
			<tr>
			<td>FGTS</td>
			<td>
				<%out.println(fgts);%>			
				${fgts}
			</td>
			</tr>
			<tr>
			<td>Salário liquido</td>
			<td>
				<%out.println(salLiquido);%>
				${salLiquido}
			</td>
			</tr>
		
		</table>
		<p align ="center"><input type="submit" value="voltar" >
	
	</form>
	</div>
</body>
</html>