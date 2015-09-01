package br.com.caelum.agenda.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

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

	protected void service(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		
		
		Calendar dataNascimentoCalendar = null;
		try {
			Date date = new SimpleDateFormat("dd/MM/yyyy").parse(request.getParameter("birthDate"));
			dataNascimentoCalendar = Calendar.getInstance();
			dataNascimentoCalendar.setTime(date);
		} catch (ParseException e) {
			out.println("Erro de conversão da data");
			System.out.println(e);
			return;
		}
		
		Contato contato = new Contato();
		contato.setNome(request.getParameter("name"));
		contato.setEmail(request.getParameter("email"));
		contato.setEndereco(request.getParameter("address"));
		contato.setDataNascimento(dataNascimentoCalendar);
		
		ContatoDao dao = new ContatoDao();
		dao.adiciona(contato);
		
		out.println("<html>");
		out.println("<body>");
		out.println("<h1>Contato " + contato.getNome() + " adicionado com sucesso");
		out.println("</body>");
		out.println("</html>");
	}
}
