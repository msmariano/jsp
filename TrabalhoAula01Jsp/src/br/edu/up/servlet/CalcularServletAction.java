package br.edu.up.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CalcularServletAction extends HttpServlet {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request,HttpServletResponse response)throws IOException, ServletException {
		
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
		
		request.setAttribute("salBruto", salBruto);
		
		
		RequestDispatcher rd = request.getRequestDispatcher("//resultado.jsp");
		rd.forward(request,response);
		
	}	
}
