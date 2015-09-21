<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:set var="cabecalhoCSS" scope="request"></c:set>
<c:set var="cabecalhoJS" scope="request"></c:set>
<c:set var="tituloDaPagina" value="Lista Tarefas" scope="request" />

<c:import url="/WEB-INF/views/cabecalho.jsp" />
<div class="container">
    <a href="novaTarefa">
        <button class="btn">
            <span class="glyphicon glyphicon-plus"></span> Criar nova tarefa
        </button>
    </a> <br /> <br />
    <table class="table table-striped table-hover">
        <thead>
            <tr>
                <th>Id</th>
                <th>Descrição</th>
                <th>Finalizada?</th>
                <th>Data de finalização</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${tarefas}" var="tarefa">
                <tr id="tarefa_${tarefa.id}">
                    <td>${tarefa.id}</td>
                    <td>${tarefa.descricao }</td>
                    <td><c:if test="${tarefa.finalizado eq false }">
                            <a href="" onclick="finalizaAgora(${tarefa.id})">
                                <button class="btn">
                                    <span class="glyphicon glyphicon-ok"></span> Finalizar agora
                                </button>
                            </a>
                        </c:if> <c:if test="${tarefa.finalizado eq true }">
						  Finalizado
                    </c:if></td>
                    <td><fmt:formatDate value="${tarefa.dataFinalizacao.time }"
                            pattern="dd/MM/yyyy" /></td>
                    <td><a href="removeTarefa?id=${tarefa.id}">
                            <button class="btn">
                                <span class="glyphicon glyphicon-remove"></span>Remover
                            </button>
                    </a></td>
                    <td><a href="mostraTarefa?id=${tarefa.id}">
                            <button class="btn">
                                <span class="glyphicon glyphicon-pencil"></span> Alterar
                            </button>
                    </a></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</div>
<!-- fim .container -->
<script>
    function finalizaAgora(id) {
      $.post("finalizaTarefa", {'id' : id}, function(resposta) {
    	$("#tarefa_" + id).html(resposta);
    });
    }
  </script>
<c:import url="/WEB-INF/views/rodape.jsp" />