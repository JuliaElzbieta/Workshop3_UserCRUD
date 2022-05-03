<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/header.jsp" %>

<!-- Begin Page Content -->
<div class="container-fluid">
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">UserCRUD</h1>
        <a href="<c:url value="/user/add"/>" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"> dodaj użytkownika</a>
    </div>
    <!-- DataTales Example -->

    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Nazwa użytkownika</h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <tr>
                        <th>Id</th>
                        <th>Nazwa użytkownika</th>
                        <th>E-mail</th>
                        <th>Opcje</th>
                    </tr>
                        <c:forEach items="${users}" var="user">
                            <tr>
                                <td>${user.id}</td>
                                <td>${user.username}</td>
                                <td>${user.email}</td>
                                <td><a href="http://localhost:8080/user/delete?user=${user.id}"> usuń </a>
                                <a href="http://localhost:8080/user/edit?user=${user.id}"> edytuj </a>
                                <a href="http://localhost:8080/user/show?user=${user.id}"> pokaż </a></td>
                            </tr>
                        </c:forEach>
                </table>
            </div>
        </div>
    </div>



</div>
<!-- /.container-fluid -->

<%@ include file="/footer.jsp" %>

