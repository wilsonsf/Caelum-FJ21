package br.com.caelum.agenda.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.caelum.agenda.dao.ContatoDao;
import br.com.caelum.agenda.modelo.Contato;

@WebServlet("/adicionaContato")
public class AdicionaContatoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		Calendar dataNascimentoCalendar = null;
		try {
			Date date = new SimpleDateFormat("yyyy-MM-dd").parse(request
					.getParameter("dataNascimento"));
			dataNascimentoCalendar = Calendar.getInstance();
			dataNascimentoCalendar.setTime(date);
		} catch (ParseException e) {
			// out.println("Erro de conversão da data");
			System.out.println(e);
			throw new RuntimeException(e);
		}

		Contato contato = new Contato();
		contato.setNome(request.getParameter("nome"));
		contato.setEmail(request.getParameter("email"));
		contato.setEndereco(request.getParameter("endereco"));
		contato.setDataNascimento(dataNascimentoCalendar);

		Connection connection = (Connection) request.getAttribute("conexao");
		ContatoDao dao = new ContatoDao(connection);
		dao.adiciona(contato);

		RequestDispatcher rd = request
				.getRequestDispatcher("/WEB-INF/jsp/contato-adicionado.jsp");
		rd.forward(request, response);

	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req, resp);
	}

}
