<%--
  Created by IntelliJ IDEA.
  User: josep
  Date: 15/07/2023
  Time: 16:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
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
<body>

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
      <li class="nav-item">
        <a class="nav-link" href="/attitudeStore/usuario/verUsuarios">Clientes</a>
      </li>
    </ul>
    <ul class="navbar-nav">
      <li class="nav-item active">
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

<div class="container mt-3">
  <h1>Histórico de Vendas</h1>

  <div class="card mt-3">
    <div class="card-body">
      <table class="table">
        <thead>
        <tr>
          <th>Cliente</th>
          <th>Valor</th>
          <th>Detalhes</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="compra" items="${historico}">
          <tr>
            <td>${compra.cliente.nome}</td>
            <td>${compra.totalCompra}</td>
            <td>
              <a href="/attitudeStore/compra/detalhesVenda/${compra.id}" class="btn" style="background-color: #7B9B9B;">
                <i class="fas fa-plus"></i>
              </a>
            </td>
          </tr>
        </c:forEach>
        </tbody>
      </table>
    </div>
  </div>

  <a href="/attitudeStore/admin/home" class="btn mt-3" style="background-color: #7B9B9B;">Voltar</a>
</div>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
