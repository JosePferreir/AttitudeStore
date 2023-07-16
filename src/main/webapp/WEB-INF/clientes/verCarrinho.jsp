<%--
  Created by IntelliJ IDEA.
  User: josep
  Date: 13/07/2023
  Time: 23:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Seu carrinho</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
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
    <a class="navbar-brand" href="/attitudeStore/compra/principal">AttitudeStore</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link" href="/attitudeStore/compra/principal">Home</a>
            </li>
        </ul>
        <ul class="navbar-nav ml-auto">

            <li class="nav-item active">
                <a class="nav-link" href="/attitudeStore/compra/verCarrinho"><i class="fas fa-shopping-cart"></i></a>
            </li>
        </ul>
        <ul class="navbar-nav">
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    ${user.nome}
                </a>
                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="/attitudeStore/usuario/editarPerfil">Editar Perfil</a>
                    <a class="dropdown-item" href="/attitudeStore/compra/historicoCompras">Histórico de Compras</a>
                    <div class="dropdown-divider"></div>
                    <a class="dropdown-item" href="/attitudeStore/login/sair">Sair</a>
                </div>
            </li>
        </ul>
    </div>
</nav>

<div class="container">
    <h1 class="text-center">Itens no seu carrinho</h1>

    <table class="table">
        <thead class="table-secondary">
        <tr>
            <th>Nome</th>
            <th>Tamanho</th>
            <th>Cor</th>
            <th>Quantidade</th>
            <th>Remover</th>
            <th>Preço</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="r" items="${carrinho.roupas}">
            <tr>
                <td>${r.nome}</td>
                <td>${r.tamanho}</td>
                <td>${r.cor}</td>
                <td>${r.quantidade}</td>
                <td>
                    <a class="btn btn-danger" href="/attitudeStore/compra/removerItemCarrinho/${r.id}">
                        <i class="fas fa-trash-alt"></i>
                    </a>
                </td>
                <td>${r.preco*r.quantidade} (${r.preco}x${r.quantidade})</td>
            </tr>
        </c:forEach>
        </tbody>
        <tfoot class="table-secondary">
        <tr>
            <th colspan="5">Valor total:</th>
            <th>${carrinho.totalCompra}</th>
        </tr>
        </tfoot>
    </table>
    <div class="d-flex justify-content-between">
        <div>
            <c:if test="${carrinho.roupas.size() > 0}">
            <a href="/attitudeStore/compra/finalizarCompra" class="btn" style="background-color: #7B9B9B;">Finalizar Compra</a>
            </c:if>
        </div>
    </div>

</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
