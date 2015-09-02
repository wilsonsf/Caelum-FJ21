<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="cabecalho.jsp" />
	<table style="border: 1px solid black">
		<jsp:useBean id="dao" class="br.com.caelum.agenda.dao.ContatoDao" />
		<thead>
			<tr>
				<th>Id</th>
				<th>Nome</th>
				<th>Email</th>
				<th>Endereço</th>
				<th>Data Nascimento</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="contato" items="${dao.lista}" varStatus="id">
				<tr style="background: ${id.count% 2== 0? '#AE8': '#FFF'}">
					<td>${id.count}</td>
					<td>${contato.nome}</td>
					<td><c:choose>
							<c:when test="${not empty contato.email}">
								<a href="mailto:${contato.email}">${contato.email}</a>
							</c:when>
							<c:otherwise>
							Email não informado
						</c:otherwise>
						</c:choose></td>
					<td>${contato.endereco}</td>
					<td>${contato.dataNascimento.time}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
<c:import url="rodape.jsp" />
</body>
</html>