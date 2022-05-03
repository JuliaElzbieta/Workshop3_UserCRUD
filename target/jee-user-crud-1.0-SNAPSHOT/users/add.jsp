<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ include file="/header.jsp" %>
<div class="container-fluid">
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">UserCRUD</h1>
        <a href="<c:url value="/user/list"/>" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"> Lista użytkowników </a>
    </div>
    <!-- DataTales Example -->

    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Dodaj użytkownika</h6>
        </div>
        <div class="card-body">
            <form action="/user/add" method="post">
                <div class="form-group">
                    <label for="name">Nazwa</label>
                    <input type="text" name="name" id="name" placeholder="Nazwa użytkownika" class="form-control">
                </div>
                <div class="form-group">
                    <label for="email">E-mail</label>
                    <input type="email" name="email" id="email" placeholder="Adres e-mail użytkownika" class="form-control">
                </div>
                <div class="form-group">
                    <label for="password">Hasło</label>
                    <input type="password" name="password" id="password" placeholder="Hasło użytkownika" class="form-control">
                </div>
                <button type="submit" class="btn btn-primary">Zapisz</button>
            </form>
        </div>
    </div>
</div>
<!-- /.container-fluid -->


<%@ include file="/footer.jsp" %>

