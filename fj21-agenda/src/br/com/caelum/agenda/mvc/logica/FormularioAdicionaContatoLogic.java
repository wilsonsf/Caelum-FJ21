package br.com.caelum.agenda.mvc.logica;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class FormularioAdicionaContatoLogic implements Logica {

	@Override
	public String executa(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		return "/WEB-INF/jsp/adiciona-contato.jsp";
	}
}
