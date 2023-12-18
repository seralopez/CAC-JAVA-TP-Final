<%@page import="java.util.List"%>
<%@page import="com.codoacodo.model.Orador"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="head.jsp" %>
        <title>Oradores</title>
    </head>

    <main>
        <%@include file="navbar.jsp" %>
        <body class="bg-body-tertiary">
            <div class="container">
                <div class="row row-cols-1 row-cols-md-3 mb-3 text-center">
                    <% List<Orador> lista = (List<Orador>) request.getAttribute("listaOradores"); %>
                    <% for (Orador oradorItem : lista) {%>
                        <div class="col">
                            <div class="card mb-4 rounded-3 shadow-sm">
                                <div class="card-header py-3">
                                    <h4 class="my-0 fw-normal"><%=oradorItem.getNombre()%> <%=oradorItem.getApellido()%></h4>
                                </div>
                                <div class="card-body">
                                    <h5 class="card-title pricing-card-title"><small class="text-body-secondary fw-light"><%=oradorItem.getMail()%></small></h5>
                                    <ul class="list-unstyled mt-3 mb-4">
                                        <%java.text.DateFormat df = new java.text.SimpleDateFormat("dd/MM/yyyy HH:MM");%>
                                        <li>Fecha alta
                                            <p><small class="text-body-secondary fw-light">
                                                    <%= df.format(oradorItem.getFechaAlta())%>
                                            </small></p>
                                        </li>
                                        <li>Temas<p><small class="text-body-secondary fw-light"><%=oradorItem.getTema()%></small></p></li>
                                        <li><small class="text-body-secondary fw-light"><%=oradorItem.getDescripcion()%></small></li>
                                    </ul>
                                    <a class="btn btn-danger" href="<%=request.getContextPath()%>/api/EliminarController?id=<%=oradorItem.getId()%>" role="button">Eliminar</a>
                                    <a class="btn btn-warning" href="<%=request.getContextPath()%>/api/EditarController?id=<%=oradorItem.getId()%>" role="button">Editar</a>
                                </div>
                            </div>
                        </div>
                    <% }%>
                </div>
                <div class="d-grid gap-2 d-sm-flex justify-content-sm-center">
                    <a class="w-25 btn btn-primary btn-lg px-4 gap-3" href="<%=request.getContextPath()%>">Volver</a>
                </div>
            </div>
        </body>
        <%@include file="footer.jsp" %>
    </main>
</html>