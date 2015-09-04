<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="cabecalhoCSS" scope="request"></c:set>
<c:set var="cabecalhoJS" scope="request"></c:set>
<c:set var="tituloDaPagina" value="${cursor}" scope="request" />

<c:import url="<c:url value='/WEB-INF/cabecalho.jsp'/>" />

</head>
<body>
    <div class="container">
        <!-- 
            <div class="form-group">
                <label></label>
                <div class="input-group">
                    <input type="text" name="" />
                </div>
            </div>
     -->

        <h2>Página de Login das Tarefas</h2>
        <form action="efetuaLogin" method="POST">
            <div class="form-group">
                <label>Login</label>
                <div class="input-group">
                    <input type="text" name="login" />
                </div>
            </div>
            <div class="form-group">
                <label>Senha</label>
                <div class="input-group">
                    <input type="password" name="senha" />
                </div>
            </div>
            <button class="btn btn-primary btn-large" type="submit">
                <!-- <span class="glyphicon glyphicon-ok"></span> -->
                Entrar nas tarefas
            </button>
        </form>
    </div>
</body>
</html>