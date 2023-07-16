<%--
  Created by IntelliJ IDEA.
  User: josep
  Date: 15/07/2023
  Time: 14:52
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
    <title>Cadastro</title>
    <style>
        body {
            background-color: #94BABB;
        }
    </style>
</head>
<body>
<div class="container d-flex justify-content-center align-items-center vh-100">
    <div class="card w-50">
        <div class="card-body">
            <h2 class="card-title">Cadastre-se</h2>
            <form:form method="post" action="/attitudeStore/usuario/confirmarCadastro" modelAttribute="usuario">
                <div class="form-group">
                    <form:label path="nome">Nome:</form:label>
                    <form:input type="text" class="form-control" id="nome" path="nome"/>
                </div>
                <div class="form-group">
                    <form:label path="idade">Idade:</form:label>
                    <form:input type="number" class="form-control" id="idade" path="idade"/>
                </div>
                <div class="form-group">
                    <form:label path="cpf">CPF:</form:label>
                    <form:input type="text" class="form-control" id="cpf" path="cpf"/>
                </div>
                <div class="form-group">
                    <form:label path="email">Email:</form:label>
                    <form:input type="email" class="form-control" id="email" path="email"/>
                </div>
                <div class="form-group">
                    <form:label path="senha">Senha:</form:label>
                    <form:input type="password" class="form-control" id="senha" path="senha"/>
                </div>
                <br>
                <br>
                <button class="btn" style="background-color: #7B9B9B;" type="submit">Cadastrar-se</button>
            </form:form>
            <p class="mt-1">Já possui conta? Faça <a href="/attitudeStore/">Login</a></p>

        </div>
    </div>
</div>

<!-- Incluir o JavaScript do Bootstrap -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>