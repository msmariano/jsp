package br.edu.up.dao.folhapagamento;

import br.edu.up.dao.funcionario.FuncionarioDao;

public class FolhaPagamentoDao {

	private FuncionarioDao funcionarioDao;
	private String mes;
	private String ano;
	private Double horas;
	private Double valor;
	public FuncionarioDao getFuncionario() {
		return funcionarioDao;
	}
	public void setFuncionario(FuncionarioDao funcionarioDao) {
		this.funcionarioDao = funcionarioDao;
	}
	public String getMes() {
		return mes;
	}
	public void setMes(String mes) {
		this.mes = mes;
	}
	public String getAno() {
		return ano;
	}
	public void setAno(String ano) {
		this.ano = ano;
	}
	public Double getHoras() {
		return horas;
	}
	public void setHoras(Double horas) {
		this.horas = horas;
	}
	public Double getValor() {
		return valor;
	}
	public void setValor(Double valor) {
		this.valor = valor;
	}

}
