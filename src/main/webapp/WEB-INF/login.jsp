<%--
  Created by IntelliJ IDEA.
  User: josep
  Date: 11/07/2023
  Time: 21:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <!-- Incluir o CSS do Bootstrap -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <title>Login</title>
</head>
<body>
<div class="container d-flex justify-content-center align-items-center vh-100">
  <div class="card">
    <div class="card-body">
      <h2 class="card-title">LOGAR</h2>
      <form:form method="post" action="/attitudeStore/login/logar" modelAttribute="usuario">
        <div class="form-group">
          <form:label path="email">Email:</form:label>
          <form:input type="text" class="form-control" path="email"/>
        </div>
        <div class="form-group">
          <form:label path="senha">Senha:</form:label>
          <form:input type="password" class="form-control" path="senha"/>
        </div>
        <input class="btn btn-primary" type="submit" value="testando">
      </form:form>
      <div>
        <a href="cadastrar.jsp">Cadastrar-se</a>
      </div>

    </div>
  </div>
</div>

<!-- Incluir o JavaScript do Bootstrap -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>