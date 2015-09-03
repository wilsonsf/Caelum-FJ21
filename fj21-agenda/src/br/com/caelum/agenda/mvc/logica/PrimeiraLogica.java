package br.com.caelum.agenda.mvc.logica;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class PrimeiraLogica implements Logica {

	@Override
	public String executa(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		System.out.println("Executando a logica ...");
		
		System.out.println("Retornando o nome da página JS...");
		return "primeira-logica.jsp";
	}
}
