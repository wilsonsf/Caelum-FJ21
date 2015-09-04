<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="assets/css/bootstrap.css">
<script src="assets/js/jquery.js"></script>
<title>Insert title here</title>
</head>
<body>
    <header class="header"></header>
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
                    <tr>
                        <td>${tarefa.id}</td>
                        <td>${tarefa.descricao }</td>
                        <td id="tarefa_${tarefa.id}"><c:if test="${tarefa.finalizado eq false }">
                                <a href="" onclick="finalizaAgora(${tarefa.id})">
                                    <button class="btn">
                                        <span class="glyphicon glyphicon-ok"></span> Finalizar agora
                                    </button>
                                </a>
                            </c:if> <c:if test="${tarefa.finalizado eq true }">
    						  Finalizado
                            </c:if></td>
                        <td><fmt:formatDate value="${tarefa.dataFinalizacao.time }" pattern="dd/MM/yyyy" /></td>
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
    <script>
    function finalizaAgora(id) {
      $.post("finalizaTarefa", {'id' : id}, function() {
    	$("#tarefa_" + id).html("Finalizado");
    });
    }
  </script>
</body>
</html>