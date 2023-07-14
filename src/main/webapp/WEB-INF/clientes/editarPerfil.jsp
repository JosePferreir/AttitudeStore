<%--
  Created by IntelliJ IDEA.
  User: josep
  Date: 14/07/2023
  Time: 00:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Incluir o CSS do Bootstrap -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <title>Editar usuário</title>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
    </style>
</head>
<body>
<div class="container">
    <h1>Seus dados cadastrados</h1>

    <div class="card">
        <div class="card-body">
            <form:form method="post" action="/attitudeStore/usuario/confirmarEditar" modelAttribute="u">
                <div class="form-group">
                    <form:label path="nome">Nome:</form:label>
                    <form:input type="text" class="form-control" id="nome" path="nome" value="${usuario.nome}"/>
                </div>
                <div class="form-group">
                    <form:label path="idade">Idade:</form:label>
                    <form:input type="number" class="form-control" id="idade" path="idade" value="${usuario.idade}"/>
                </div>
                <div class="form-group">
                    <form:label path="cpf">CPF:</form:label>
                    <form:input type="text" class="form-control" id="cpf" path="cpf" value="${usuario.cpf}"/>
                </div>
                <div class="form-group">
                    <form:label path="email">Email:</form:label>
                    <form:input type="text" class="form-control" id="email" path="email" value="${usuario.email}"/>
                </div>
                <div class="form-group">
                    <form:label path="senha">Senha:</form:label>
                    <form:input type="password" class="form-control" id="senha" path="senha" value="${usuario.senha}"/>
                </div>
                    <form:input type="hidden" class="form-control" id="senha" path="id" value="${usuario.id}"/>
                <br />
                <br />
                <button type="submit" class="btn btn-primary">Salvar Perfil</button>
            </form:form>

        </div>
    </div>

    <a href="/attitudeStore/compra/principal" class="btn btn-primary mt-3">Voltar</a>
</div>

<!-- Incluir o JavaScript do Bootstrap -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>