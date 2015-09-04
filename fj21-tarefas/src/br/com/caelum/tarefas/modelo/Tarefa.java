package br.com.caelum.tarefas.modelo;

import java.util.Calendar;

import javax.validation.constraints.*;

import org.springframework.format.annotation.DateTimeFormat;

public class Tarefa {

	private Long id;

	@NotNull
	@Size(min = 5)
	private String descricao;
	private boolean finalizado;
	
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Calendar dataFinalizacao;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public boolean isFinalizado() {
		return finalizado;
	}

	public void setFinalizado(boolean finalizado) {
		this.finalizado = finalizado;
	}

	public Calendar getDataFinalizacao() {
		return dataFinalizacao;
	}

	public void setDataFinalizacao(Calendar dataFinalizacao) {
		this.dataFinalizacao = dataFinalizacao;
	}

}
