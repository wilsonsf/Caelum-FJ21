<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="cabecalhoCSS" scope="request">
</c:set>
<c:set var="cabecalhoJS" scope="request">
</c:set>
<c:set var="tituloDaPagina" value="FJ-21 Agenda: Contato adicionado"
	scope="request" />
<c:import url="cabecalho.jsp" />
<div class="container">
	<h2>Contato ${param.nome} adicionado com sucesso</h2>
</div>
<c:import url="rodape.jsp" />