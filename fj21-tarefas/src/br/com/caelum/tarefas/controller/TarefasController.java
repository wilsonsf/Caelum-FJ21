package br.com.caelum.tarefas.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import br.com.caelum.tarefas.dao.JdbcTarefaDao;
import br.com.caelum.tarefas.modelo.Tarefa;

@Controller
public class TarefasController {
	private static final String path = "tarefa/";
	private final JdbcTarefaDao dao;

	/*
	 * public static String getPath() { return TarefasController.path; }
	 */
	
	@Autowired
	public TarefasController(JdbcTarefaDao dao) {
		this.dao = dao;
	}

	@RequestMapping("novaTarefa")
	public String form() {
		return TarefasController.path + "formulario";
	}

	@RequestMapping("adicionaTarefa")
	public String adiciona(@Valid Tarefa tarefa, BindingResult result) {
		if (result.hasErrors()) {
			return TarefasController.path + "formulario";
		}

		this.dao.adiciona(tarefa);
		return TarefasController.path + "adicionada";
	}

	@RequestMapping("listaTarefas")
	public String lista(Model model) {
		model.addAttribute("tarefas", this.dao.lista());
		return TarefasController.path + "lista";
	}

	@RequestMapping("removeTarefa")
	public String remove(Tarefa tarefa) {
		this.dao.remove(tarefa);
		return "redirect:listaTarefas";
	}

	@RequestMapping("mostraTarefa")
	public String mostra(Long id, Model model) {
		model.addAttribute("tarefa", this.dao.buscaPorId(id));
		return TarefasController.path + "mostra";
	}
	
	@RequestMapping("alteraTarefa")
	public String altera(Tarefa tarefa){
		this.dao.altera(tarefa);
		return "redirect:listaTarefas";
	}
	
	@ResponseBody
	@RequestMapping("finalizaTarefa")
	public void finaliza(Long id){
		this.dao.finaliza(id);
	}
}
