<%--
  Created by IntelliJ IDEA.
  User: josep
  Date: 13/07/2023
  Time: 15:39
  To change this template use File | Settings | File Templates.
  <a href="/attitudeStore/login/sair">Sair</a>
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>AttitudeStore</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <style>
        body {
            background-color: #94BABB;
        }
        .fixed-image-size {
            max-height: 253px;
        }
        .fixed-item {
            position: absolute;
            bottom: 5%;
            left: 15%;
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
            <li class="nav-item active">
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

<h1 class="text-center mt-3">Bem vindo a Attitude Store</h1>

<div class="container d-flex justify-content-center align-items-center flex-column mt-3">
    <div class="row">
        <c:forEach var="r" items="${roupas}" varStatus="loop">
            <div class="col-md-3 mb-3">
                <div class="card border">
                    <img src="${r.descricao}" class="card-img-top fixed-image-size" alt="...">
                    <div class="card-body text-center" style="height: 226px;">
                        <h5 class="card-title"><strong>${r.nome} - ${r.cor}</strong></h5>
                        <p class="card-text">Tamanho: ${r.tamanho}<br><strong><h4>R$:${r.preco}</h4></strong></p>

                        <a href="/attitudeStore/compra/addItemCarrinho/${r.id}" class="btn fixed-item" style="background-color: #7B9B9B;">Adicionar ao carrinho</a>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>


</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
