package br.edu.up.dto.funcionario;

import java.util.ArrayList;
import java.util.List;

import br.edu.up.dao.funcionario.FuncionarioDao;

public class FuncionarioDTO {
	private List<FuncionarioDao> funcionarios = new ArrayList<FuncionarioDao>();

	public void setFuncionario(FuncionarioDao funcionarioDao){
		funcionarios.add(funcionarioDao);
	}
	public List<FuncionarioDao> getFuncionarios(){
		return funcionarios;
	}
}
