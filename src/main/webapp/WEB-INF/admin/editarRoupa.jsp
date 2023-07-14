<%--
  Created by IntelliJ IDEA.
  User: josep
  Date: 14/07/2023
  Time: 02:56
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
  <title>Cadastrar Roupa</title>
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
      <h1 class="card-title">Editar Roupa</h1>
      <br>
      <form:form method="post" action="/attitudeStore/roupa/confirmarEditar" modelAttribute="roupaEditar">
        <div class="form-group">
          <form:label path="nome">Nome:</form:label>
          <form:input type="text" class="form-control" id="nome" path="nome" value="${roupaEditar.nome}"/>
        </div>
        <div class="form-group">
          <form:label path="tamanho">Tamanho:</form:label>
          <form:input type="text" class="form-control" id="tamanho" path="tamanho" value="${roupaEditar.tamanho}"/>
        </div>
        <div class="form-group">
          <form:label path="preco">Preço:</form:label>
          <form:input type="number" class="form-control" id="preco" path="preco" value="${roupaEditar.preco}"/>
        </div>
        <div class="form-group">
          <form:label path="cor">Cor:</form:label>
          <form:input type="text" class="form-control" id="cor" path="cor" value="${roupaEditar.cor}"/>
        </div>
        <div class="form-group">
          <form:label path="descricao">Link da imagem:</form:label>
          <form:input type="text" class="form-control" id="descricao" path="descricao" value="${roupaEditar.descricao}"/>
        </div>
        <form:input type="hidden" path="id" value="${roupaEditar.id}"/>
        <br>
        <br>
        <button class="btn btn-primary" type="submit">Editar Roupa</button>
      </form:form>

      <a href="/attitudeStore/roupa/roupasCadastradas" class="btn btn-primary mt-3">Voltar</a>
    </div>
  </div>
</div>

<!-- Incluir o JavaScript do Bootstrap -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
