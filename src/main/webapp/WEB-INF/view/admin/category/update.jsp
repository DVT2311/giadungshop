<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <title>Update Category</title>

    <!-- gọi CSS/JS qua resources -->
    <link href="<c:url value='/css/styles.css' />" rel="stylesheet" />
    <script src="<c:url value='/js/scripts.js' />"></script>
</head>

<body class="sb-nav-fixed">
    <jsp:include page="../layout/header.jsp" />
    <div id="layoutSidenav">
        <jsp:include page="../layout/sidebar.jsp" />
        <div id="layoutSidenav_content">
            <main>
                <div class="container-fluid px-4">
                    <h1 class="mt-4">Category</h1>
                    <ol class="breadcrumb mb-4">
                        <li class="breadcrumb-item"><a href="/admin">Dashboard</a></li>
                        <li class="breadcrumb-item"><a href="/admin/category">Category</a></li>
                        <li class="breadcrumb-item active">Update</li>
                    </ol>

                    <div class="mt-5">
                        <div class="row">
                            <div class="col-md-6 col-12 mx-auto">
                                <h3>Update Category</h3>
                                <hr />

                                <form:form method="post"
                                           action="/admin/category/update"
                                           modelAttribute="currentCategory"
                                           class="row">

                                    <!-- Hidden field id -->
                                    <form:hidden path="id" />

                                    <div class="mb-3 col-12 col-md-6">
                                        <label class="form-label">Name:</label>
                                        <form:input path="name" type="text" class="form-control" />
                                    </div>

                                    <div class="mb-3 col-12 col-md-6">
                                        <label class="form-label">Status:</label>
                                        <form:input path="status" type="number"
                                                    class="form-control" min="0" max="1" />
                                    </div>

                                    <div class="col-12 mb-5">
                                        <button type="submit" class="btn btn-primary">Update</button>
                                        <a href="/admin/category"
                                           class="btn btn-secondary">Cancel</a>
                                    </div>
                                </form:form>
                                
                            </div>
                        </div>
                    </div>
                </div>
            </main>
            <jsp:include page="../layout/footer.jsp" />
        </div>
    </div>
</body>
</html>
