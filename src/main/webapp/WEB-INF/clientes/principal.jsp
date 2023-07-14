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
    <!-- Incluir o CSS do Bootstrap -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
</head>
<body>

<h1 class="text-center">Bem vindo a Attitude Store</h1>

<a href="/attitudeStore/compra/verCarrinho" class="btn btn-primary"><i class="fas fa-shopping-cart"></i></a>
<a href="/attitudeStore/usuario/editarPerfil" class="btn btn-primary">Editar perfil</a>
<a href="/attitudeStore/compra/historicoCompras" class="btn btn-primary">Histórico de Compras</a>

<div class="container d-flex justify-content-center align-items-center flex-column mt-3">


    <div class="row">
        <c:forEach var="r" items="${roupas}" varStatus="loop">
            <div class="col-md-4 mb-3">
                <div class="card" style="width: 18rem;">
                    <img src="${r.descricao}" class="card-img-top" alt="...">
                    <div class="card-body text-center">
                        <h5 class="card-title">${r.nome}</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <a href="/attitudeStore/compra/addItemCarrinho/${r.id}" class="btn btn-primary">Adicionar a compra</a>
                    </div>
                </div>
            </div>
            <%-- Adicionar quebra de linha após cada terceiro card --%>
            <c:if test="${loop.index % 3 == 2}">
                <div class="w-100"></div>
            </c:if>
        </c:forEach>
    </div>

    <div class="mt-3">
        <a href="/attitudeStore/login/sair" class="btn btn-primary mt-3">Sair</a>
    </div>

</div>

<!-- Incluir o JavaScript do Bootstrap -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>

