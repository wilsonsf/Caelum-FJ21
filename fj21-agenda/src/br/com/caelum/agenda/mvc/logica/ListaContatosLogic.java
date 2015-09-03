package br.com.caelum.agenda.mvc.logica;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.caelum.agenda.dao.ContatoDao;
import br.com.caelum.agenda.modelo.Contato;

public class ListaContatosLogic implements Logica {

	@Override
	public String executa(HttpServletRequest request,
			HttpServletResponse response) throws Exception {

		List<Contato> contatos = new ContatoDao().getLista();

		request.setAttribute("contatos", contatos);

		return "/WEB-INF/jsp/lista-contatos.jsp";
	}

}
