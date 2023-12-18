<%@page import="com.codoacodo.model.Orador"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="head.jsp" %>
        <title>Editar Orador</title>
    </head>

    <main>
        <%@include file="navbar.jsp" %>

        <body class="bg-body-tertiary">
            <div class="container">
                <div class="py-5 text-center">
                    <img class="d-block mx-auto mb-4" src="<%=request.getContextPath()%>/images/editar.png" alt="Imagen nuevo orador">
                </div>
                <% Orador lista = (Orador) request.getAttribute("listaOrador");%>
                <div class="col-12">
                    <h4 class="mb-3">Editar orador : <%=lista.getNombre()%> <%=lista.getApellido()%></h4>
                    <form class="needs-validation" novalidate method="post" action="<%=request.getContextPath()%>/api/EditarController">
                        <input type="text" name="input_id" value="<%=lista.getId()%>" style="display: none">
                        <div class="row g-3">
                            <div class="col-12">
                                <label for="input_nombre" class="form-label">Nombre</label>
                                <div class="input-group has-validation">
                                    <span class="input-group-text"><i class="bi bi-check"></i></span>
                                    <input type="text" class="form-control" name="input_nombre" placeholder="" value="<%=lista.getNombre()%>" required maxlength="45">
                                    <div class="invalid-feedback">
                                        Por favor ingresar nombre.
                                    </div>
                                </div>
                            </div>
                            <div class="col-12">
                                <label for="input_apellido" class="form-label">Apellido</label>
                                <div class="input-group has-validation">
                                    <span class="input-group-text"><i class="bi bi-check-all"></i></span>
                                    <input type="text" class="form-control" name="input_apellido" placeholder="" value="<%=lista.getApellido()%>"required maxlength="45">
                                    <div class="invalid-feedback">
                                        Por favor ingresar apellido.
                                    </div>
                                </div>
                            </div>

                            <div class="col-12">
                                <label for="input_email" class="form-label">Email</label>
                                <div class="input-group has-validation">
                                    <span class="input-group-text"><i class="bi bi-at"></i></span>
                                    <input type="email" class="form-control" name="input_email" placeholder="" value="<%=lista.getMail()%>" required maxlength="45">
                                    <div class="invalid-feedback">
                                        Por favor ingresar un mail valido.
                                    </div>
                                </div>
                            </div>
                        </div>

                        <hr class="my-4">
                        <h4 class="mb-3">Temas a tratar</h4>

                        <div class="input-group has-validation" style="justify-content: center;">
                            <% String tema = lista.getTema();%>
                            <div class="form-check" style="margin: 5px;">
                                <% if (tema.contains("Javascript")) { %>
                                <label><input type="checkbox" class="form-check-input" name="input_j" value="Javascript " checked></label>
                                    <% } else { %>
                                <label><input type="checkbox" class="form-check-input" name="input_j" value="Javascript "></label>
                                    <% } %>
                                <span class="badge text-bg-warning rounded-pill">Javascript</span></label>
                            </div>
                            <div class="form-check" style="margin: 5px;">
                                <% if (tema.contains("React")) { %>
                                <label><input type="checkbox" class="form-check-input" name="input_r" value="React " checked>
                                    <% } else { %>
                                    <label><input type="checkbox" class="form-check-input" name="input_r" value="React ">
                                        <% } %>                                    
                                        <span class="badge text-light bg-info">React</span></label>
                            </div>
                            <div class="form-check" style="margin: 5px;">
                                <% if (tema.contains("Negocios")) { %>
                                <label><input type="checkbox" class="form-check-input" name="input_n" value="Negocios " checked>
                                    <% } else { %>
                                    <label><input type="checkbox" class="form-check-input" name="input_n" value="Negocios ">
                                        <% } %>
                                        <span class="badge text-bg-secondary">Negocios</span></label>
                            </div>
                            <div class="form-check" style="margin: 5px;">
                                <% if (tema.contains("Startups")) { %>
                                <label><input type="checkbox" class="form-check-input" name="input_s" value="Startups " checked>
                                    <% } else { %>
                                    <label><input type="checkbox" class="form-check-input" name="input_s" value="Startups ">
                                        <% } %>
                                        <span class="badge text-bg-danger">Startups</span></label>
                            </div>
                            <div class="form-check" style="margin: 5px;">
                                <% if (tema.contains("Otro")) { %>
                                <label><input type="checkbox" class="form-check-input" name="input_o" value="Otro" checked>
                                    <% } else { %>
                                    <label><input type="checkbox" class="form-check-input" name="input_o" value="Otro">
                                        <% }%>
                                        <span class="badge text-bg-success">Otro</span></label>
                            </div>
                        </div>

                        <hr class="my-4">

                        <h4 class="mb-3">Comentario sobre el tema a tratar</h4>

                        <div class="my-3">
                            <div class="input-group">     
                                <textarea class="form-control" name="input_descripcion" id="input_descripcion" maxlength="235"><%=lista.getDescripcion()%></textarea>
                            </div>
                            <small class="text-body-secondary" id="contador">Quedan 235 caracteres</small>
                        </div>

                        <hr class="my-4">
                        <div class="d-grid gap-2 d-sm-flex justify-content-sm-center">
                            <a class="w-25 btn btn-primary btn-lg px-4 gap-3" href="<%=request.getContextPath()%>">Volver</a>
                            <button class="w-25 btn btn-success btn-lg px-4 gap-3" type="submit">Editar</button>
                        </div>
                    </form>
                </div>
            </div>
        </body>
    </main>
</div>
<%@include file="footer.jsp" %>
<%@include file="validar.jsp" %>
</body>	
</html>