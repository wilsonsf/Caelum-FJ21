<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<c:set var="cabecalhoCSS" scope="request"></c:set>
<c:set var="cabecalhoJS" scope="request"></c:set>
<c:set var="tituloDaPagina" value="Adicionar Tarefa" scope="request" />

<c:import url="/WEB-INF/views/cabecalho.jsp" />
    <div class="container">
        <h3>Adicionar tarefas</h3>
        <form:errors path="tarefa.descricao" />
        <form action="adicionaTarefa" method="post">
            <textarea name="descricao" rows="5" cols="100"></textarea>
            <br /> <input type="submit" value="Adicionar" />
        </form>
    </div> <!-- fim .container -->
<c:import url="/WEB-INF/views/rodape.jsp" />