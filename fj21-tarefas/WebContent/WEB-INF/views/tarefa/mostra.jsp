<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:set var="cabecalhoCSS" scope="request"></c:set>
<c:set var="cabecalhoJS" scope="request"></c:set>
<c:set var="tituloDaPagina" value="Mostra Tarefa" scope="request" />

<c:import url="/WEB-INF/views/cabecalho.jsp" />
<div class="container">
    <form action="alteraTarefa" method="POST">
        <fieldset>
            <legend>Altera tarefa - ${tarefa.id }</legend>
            <input type="hidden" name="id" value="${tarefa.id}" />

            <div class="form-group">
                <label for="descricao">Descrição</label>
                <div class="input-group">
                    <textarea name="descricao" cols="100" rows="5" required>${tarefa.descricao }</textarea>
                </div>
            </div>

            <div class="form-group">
                <label for="finalizado">Finalizado?</label>
                <div class="input-group">
                    <input type="checkbox" name="finalizado" value="true"
                        ${tarefa.finalizado? 'checked' : '' }>
                </div>
            </div>

            <div class="form-group">
                <label for="dataFinalizacao">Data de Finalização</label>
                <div class="input-group">
                    <input type="date" name="dataFinalizacao"
                        value="<fmt:formatDate value="${tarefa.dataFinalizacao.time}" pattern="mm/dd/yyyy" />"
                        required />
                </div>
            </div>
            <div class="form-group">
                <input type="submit" value="Alterar" />
            </div>
        </fieldset>
    </form>
</div> <!-- fim .container -->
<c:import url="/WEB-INF/views/rodape.jsp" />