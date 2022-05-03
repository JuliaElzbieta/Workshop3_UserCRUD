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
            <h6 class="m-0 font-weight-bold text-primary">Sczegóły użytkownika</h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <tr>
                        <th>Id</th>
                        <td>${showUser.id}</td>
                    </tr>
                    <tr>
                        <th>Nazwa użytkownika</th>
                        <td>${showUser.username}</td>
                    </tr>
                    <tr>
                        <th>Email </th>
                        <td>${showUser.email}</td>
                    </tr>
                </table>
            </div>
    </div>
</div>

</div>
<!-- /.container-fluid -->

<%@ include file="/footer.jsp" %>

