<%--
  Created by IntelliJ IDEA.
  User: josep
  Date: 14/07/2023
  Time: 12:40
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
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <title>Menu admin</title>
    <style>
        body {
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #94BABB;
        }
    </style>
</head>

<nav class="navbar navbar-expand-lg navbar-light" style="background-color: #7B9B9B;">
    <a class="navbar-brand" href="/attitudeStore/admin/home">AttitudeStore</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" href="/attitudeStore/admin/home">Home</a>
            </li>
        </ul>
        <ul class="navbar-nav">
            <li class="nav-item" >
                <a class="nav-link" href="/attitudeStore/roupa/roupasCadastradas">Roupas</a>
            </li>
        </ul>
        <ul class="navbar-nav">
            <li class="nav-item active">
                <a class="nav-link" href="/attitudeStore/usuario/verUsuarios">Clientes</a>
            </li>
        </ul>
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" href="/attitudeStore/compra/historicoAdmin">Vendas</a>
            </li>
        </ul>

        <ul class="navbar-nav ml-auto">
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    ${user.nome}
                </a>
                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="/attitudeStore/login/sair">Sair</a>
                </div>
            </li>
        </ul>
    </div>
</nav>

<body>
<div class="container mt-3">
    <h1>Editar usuário</h1>

    <div class="card">
        <div class="card-body">
            <form:form method="post" action="/attitudeStore/usuario/confirmarEditar" modelAttribute="usuarioEditar">
                <div class="form-group">
                    <form:label path="nome">Nome:</form:label>
                    <form:input type="text" class="form-control" id="nome" path="nome" value="${usuarioEditar.nome}"/>
                </div>
                <div class="form-group">
                    <form:label path="idade">Idade:</form:label>
                    <form:input type="number" class="form-control" id="idade" path="idade" value="${usuarioEditar.idade}"/>
                </div>
                <div class="form-group">
                    <form:label path="cpf">CPF:</form:label>
                    <form:input type="text" class="form-control" id="cpf" path="cpf" value="${usuarioEditar.cpf}"/>
                </div>
                <div class="form-group">
                    <form:label path="email">Email:</form:label>
                    <form:input type="text" class="form-control" id="email" path="email" value="${usuarioEditar.email}"/>
                </div>
                <div class="form-group">
                    <form:label path="senha">Senha:</form:label>
                    <form:input type="password" class="form-control" id="senha" path="senha" value="${usuarioEditar.senha}"/>
                </div>
                <form:input type="hidden" path="id" value="${usuarioEditar.id}"/>
                <br />
                <br />
                <button type="submit" class="btn" style="background-color: #7B9B9B;">Editar Cliente</button>
            </form:form>
        </div>
    </div>

    <a href="/attitudeStore/usuario/verUsuarios" class="btn mt-3" style="background-color: #7B9B9B;">Voltar</a>
</div>

<!-- Incluir o JavaScript do Bootstrap -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
