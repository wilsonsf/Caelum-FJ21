<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="caelum" %>
<c:set var="cabecalhoCSS" scope="request">
	jquery
</c:set>
<c:set var="cabecalhoJS" scope="request">
	jquery,jquery-ui
</c:set>
<c:set var="tituloDaPagina" value="FJ-21 Agenda: Adiciona Contato"
	scope="request" />
<c:import url="cabecalho.jsp" />

<div class="container">
	<div class="panel">
		<form action="adicionaContato" method="POST">
			<fieldset>
				<legend>Dados do contato</legend>
				<div class="form-group">
					<label for="nome">Nome</label>
					<div class="input-group">
						<input type="text" name="nome" required autofocus>
					</div>
				</div>
				<div class="form-group">
					<label for="email">Email</label>
					<div class="input-group">
						<input type="email" name="email" placeholder="email@exemplo.com"
							required>
					</div>
				</div>
				<div class="form-group">
					<label for="endereco">Endereço</label>
					<div class="input-group">
						<input type="text" name="endereco" required>
					</div>
				</div>
				<div class="form-group">
					<label for="dataNascimento">Data Nascimento</label>
					<div class="input-group">
						<input type="date" name="dataNascimento" required>
						<%-- <caelum:campoData id="dataNascimento" /> --%>
					</div>
				</div>
				<div>
					<button type="submit" class="btn btn-primary btn-lg">
						Gravar</button>
				</div>
			</fieldset>
		</form>
	</div>
	<!-- fim .panel -->
</div>
<!-- fim .container -->
<c:import url="rodape.jsp" />