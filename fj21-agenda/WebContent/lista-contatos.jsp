<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:import url="cabecalho.jsp" />
<div class="container">
<table class="table table-responsive">
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
	<tbody class="table-striped">
		<c:forEach var="contato" items="${dao.lista}" varStatus="id">
			<tr style="background: ${id.count% 2== 0? '#AE8': '#FFF'}">
				<td>${id.count}</td>
				<td>${contato.nome}</td>
				<td><c:choose>
						<c:when test="${not empty contato.email}">
							<a href="mailto:${contato.email}">${contato.email}</a>
						</c:when>
						<c:otherwise>Email não informado</c:otherwise>
					</c:choose></td>
				<td>${contato.endereco}</td>
				<td><fmt:formatDate value="${contato.dataNascimento.time}"
						pattern="dd/MM/yyyy" /></td>
			</tr>
		</c:forEach>
	</tbody>
</table>
</div> <!-- fim .container -->
<c:import url="rodape.jsp" />