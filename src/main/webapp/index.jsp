<!DOCTYPE html>
<html lang="es-ar">
    <head>
        <%@include file="head.jsp" %>
        <title>ABM Oradores</title>
    </head>
    <%@include file="navbar.jsp" %>	
    <body class="bg-body-tertiary">
        <div class="container">
            <main style="margin: 25px">
                <div class="card card-cover h-100 overflow-hidden text-bg-dark rounded-4 shadow-lg cartas" style="background-image: url('./images/codoacodo.png');">
                    <div class="d-flex flex-column h-100 p-5 pb-3 text-white text-shadow-1">
                        <h3 class="pt-5 mt-5 mb-4 display-6 lh-1 fw-bold">Gestion oradores</h3>
                        <ul class="d-flex list-unstyled mt-auto">

                            <li class="d-flex align-items-center me-3">
                                <a href="<%=request.getContextPath()%>/alta.jsp" class="btn btn-primary btn-lg px-4 me-md-2 fw-bold">Nuevo orador</a>
                            </li>
                            <li class="d-flex align-items-center">
                                <a href="<%=request.getContextPath()%>/api/ListarController" class="btn btn-outline-warning btn-lg px-4">Ver lista oradores</a>
                            </li>
                        </ul>
                    </div>
                </div> 
            </main>
        </div>
    </body>
    <%@include file="footer.jsp" %>
</html>