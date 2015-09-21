<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<script src="resources/js/jquery.min.js"></script>
<!--  
<link rel="stylesheet" href="resources/css/bootstrap.css">
<link rel="stylesheet" href="resources/css/bootstrap-theme.css">
<script src="resources/js/bootstrap.js"></script>
-->

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

<%--
<c:set var="cabecalhoCSS" scope="request"></c:set>
<c:set var="cabecalhoJS" scope="request"></c:set>
<c:set var="tituloDaPagina" value="Adiciona Contato" scope="request" />
 --%>

<%-- use c:set within request scope with comma separated values --%>
<c:if test="${not empty cabecalhoCSS }">
    <c:forTokens items="${cabecalhoCSS}" delims="," var="item">
        <link rel="stylesheet" href="resources/css/${item}">
    </c:forTokens>
</c:if>

<c:if test="${not empty cabecalhoJS }">
    <c:forTokens items="${cabecalhoJS}" delims="," var="item">
        <script src="resources/js/${item}.js"></script>
    </c:forTokens>
</c:if>

<title>FJ21 Tarefas: ${tituloDaPagina}</title>
</head>
<body>
    <header style="border-bottom: black 1px solid">
        <div class="container">
            <h1>
                <%-- <img src="<c:url value='/assets/images/caelum.png' />" alt="logo" /> --%>
                <span>Gerenciador de Tarefas</span>
            </h1>
        </div>
    </header>