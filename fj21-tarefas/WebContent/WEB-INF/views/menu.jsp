<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="cabecalhoCSS" scope="request"></c:set>
<c:set var="cabecalhoJS" scope="request"></c:set>
<c:set var="tituloDaPagina" value="Menu" scope="request" />

<c:import url="/WEB-INF/views/cabecalho.jsp" />
<div class="container">
    <h2>Página inicial da Lista de tarefas</h2>
    <p>Bem vindo, ${usuarioLogado.login}</p>
    <a href="listaTarefas">Clique aqui</a> para acessar a lista de tarefas
</div> <!-- fim .container -->
<c:import url="/WEB-INF/views/rodape.jsp" />