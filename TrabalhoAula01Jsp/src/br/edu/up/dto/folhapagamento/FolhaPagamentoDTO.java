package br.edu.up.dto.folhapagamento;


import java.util.ArrayList;
import java.util.List;

import br.edu.up.dao.folhapagamento.FolhaPagamentoDao;

public class FolhaPagamentoDTO {
	private List<FolhaPagamentoDao> folha = new ArrayList<FolhaPagamentoDao>();

	public List<FolhaPagamentoDao> getFolha() {
		return folha;
	}

	public void setFolha(List<FolhaPagamentoDao> folha) {
		this.folha = folha;
	}

}
