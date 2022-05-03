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
            <h6 class="m-0 font-weight-bold text-primary">Czy na pewno chcesz usunąć użytkownika?</h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <form action="/user/delete" method="post">
                    <div class="form-group">
                        <label for="id">Id</label>
                        <input type="text" name="id" id="id" value="${userToDelete.id}" placeholder="Nazwa użytkownika" class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="name">Nazwa</label>
                        <input type="text" name="name" id="name" value="${userToDelete.username}" placeholder="Nazwa użytkownika" class="form-control">
                    </div>
                    <div class="form-group">
                        <label for="email">E-mail</label>
                        <input type="email" name="email" id="email" value="${userToDelete.email}" placeholder="Adres e-mail użytkownika" class="form-control">
                    </div>
                    <button  type="submit" class="btn btn-primary">Usuń</button>
                </form>
                <button onclick="location.href='http://localhost:8080/user/list';" class="btn btn-primary">Wróć</button>
            </div>
        </div>
    </div>



</div>
<!-- /.container-fluid -->

<%@ include file="/footer.jsp" %>

