<%--
  Created by IntelliJ IDEA.
  User: josep
  Date: 14/07/2023
  Time: 02:25
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
  <title>Menu admin</title>
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
  <div class="card">
    <div class="card-body">
      <h1 class="card-title">Bem vindo admin</h1>
      <a href="/attitudeStore/roupa/roupasCadastradas" class="card-link btn btn-primary mt-2">Ver roupas cadastradas</a> <br>
      <a href="/attitudeStore/roupa/cadastrar" class="card-link btn btn-primary mt-2">Cadastrar roupa</a> <br> <br>
      <a href="/attitudeStore/usuario/verUsuarios" class="card-link btn btn-primary mt-2">Ver clientes cadastrados</a> <br> <br>
      <a href="/attitudeStore/compra/historicoAdmin" class="card-link btn btn-primary mt-2">Ver Histórico de Vendas</a>
      <a href="/attitudeStore/login/sair" class="card-link btn btn-primary mt-2">Sair</a>
    </div>
  </div>
</div>

<!-- Incluir o JavaScript do Bootstrap -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
