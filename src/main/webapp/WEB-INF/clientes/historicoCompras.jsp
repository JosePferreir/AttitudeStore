<%--
  Created by IntelliJ IDEA.
  User: josep
  Date: 14/07/2023
  Time: 01:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<html>
<head>
  <title>Title</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.0/css/bootstrap.min.css">
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
  <div>
    <h1 class="text-center">Seu histórico de compras</h1>
  </div>


  <div class="overflow-auto">
    <c:forEach var="compra" items="${historico}">

      <div class="card mt-3">
        <div class="card-body">
          <table class="table">
            <thead class="table-secondary">
            <tr>
              <th>Nome</th>
              <th>Tamanho</th>
              <th>Cor</th>
              <th>Quantidade</th>
              <th>Preço</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="r" items="${compra.roupas}">
              <tr>
                <td>${r.nome}</td>
                <td>${r.tamanho}</td>
                <td>${r.cor}</td>
                <td>${r.quantidade}</td>
                <td>${r.preco * r.quantidade} (${r.preco}x${r.quantidade})</td>
              </tr>
            </c:forEach>
            </tbody>
            <tfoot>
            <tr>
              <th colspan="4">Valor total:</th>
              <th>${compra.totalCompra}</th>
            </tr>
            </tfoot>
          </table>
        </div>
      </div>
    </c:forEach>
  </div>

  <div class="text-center mt-3">
    <a href="/attitudeStore/compra/principal" class="btn btn-primary mt-3">Voltar</a>
  </div>
</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.0/js/bootstrap.bundle.min.js"></script>
</body>
</html>
