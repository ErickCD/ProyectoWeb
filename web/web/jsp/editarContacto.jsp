<%-- 
    Document   : editarContacto
    Created on : 14-dic-2016, 13:00:38
    Author     : Manuel Florez
--%>

<%@page import="co.edu.ufps.dto.Contacto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="co.edu.ufps.controlador.Controlador" id="controlador" scope="session"></jsp:useBean>
<jsp:useBean class="co.edu.ufps.dto.Usuario" id="usuario" scope="session"></jsp:useBean>
<%
    String cc = request.getParameter("cedula");
    Contacto c = controlador.buscarContacto("cedula", cc);
%>
    <!DOCTYPE html>
    <html>
        <head>
            <title>Registro de Contacto</title>
        <%@include file="plantilla/style.jsp" %>
    </head>
    <body>

        <nav>
            <div class="nav-wrapper container">
                <div class="col s12">
                    <a href="home.jsp" class="breadcrumb">MinCIT</a>
                    <a href="dashboard.jsp" class="breadcrumb">Dasboard</a>
                </div>
            </div>
        </nav>

        <div class="container">
            <form id="contacto" action="proceso/actualizarContacto.jsp" method="POST">
                <div class="row">

                    <h5 class="center">Programa de Fortalecimiento Empresarial</h5>

                    <div class="col S12">
                        <div class="row">
                            <div class="row">
                                <div class="col m4 s12">
                                    <label for="cto_consecutivo">Concecutivo</label>
                                    <input value="<%=c.getConsecutivo() %>" id="cto_consecutivo" name="cto_consecutivo" type="hidden"/>
                                    <input value="<%=c.getConsecutivo() %>" type="text" disabled >
                                </div>

                                <div class="col m4 s12 input-field">
                                    <i class="material-icons prefix">today</i>
                                    <input id="fecha" name="fecha" type="hidden" value="<%=c.getFecha() %>">
                                    <input value="<%=c.getFecha() %>" type="text" disabled>
                                </div>

                                <div class="col m4 s12 input-field">
                                    <label for="cto_asesor">Asesor</label>
                                    <input id="asesor" name="asesor" type="hidden" value="<%=c.getAsesor() %>" >
                                    <input type="text" class="validate" value="<%=c.getAsesor() %>" disabled>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col m6 s12 input-field">
                                    <label for="cto_nombres">Nombres</label>
                                    <input id="cto_nombres" name="cto_nombres" type="text" class="validate" required value="<%=c.getCto_nombres() %>">
                                </div>

                                <div class="col s12 m6 input-field">
                                    <input id="cto_apellidos" name="cto_apellidos" type="text" class="validate" required value="<%=c.getCto_apellidos() %>">
                                    <label for="cto_apellidos" >Apellidos</label>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col s12 m6 input-field">
                                    <input id="cto_cc" name="cto_cc" type="number" class="validate" required value="<%=c.getCto_cc() %>">
                                    <label for="cto_cc">Nro CC.</label>
                                </div>

                                <div class="col s12 m6">
                                    <label>Género</label>
                                    <select id="cto_genero" name="cto_genero" class="browser-default" required="">
                                        <% String genero = c.getCto_genero();%>
                                        <option value="Masculino" <%= (genero.equals("Masculino"))?"selected":"" %> >Masculino</option>
                                        <option value="Femenino" <%= (genero.equals("Femenino"))?"selected":"" %> >Femenino</option>
                                        <option value="LGBTI" <%= (genero.equals("LGBTI"))?"selected":"" %> >LGBTI</option>
                                    </select>
                                </div>
                            </div>

                            <div class="row">

                                <div class="col m6 s12 input-field">
                                    <i class="material-icons prefix" >email</i>
                                    <input id="cto_email" value="<%=c.getCto_email() %>" name="cto_email" type="email" class="validate" required="">
                                    <label for="cto_email">Email</label>
                                </div>

                            </div>

                            <div class="row">
                                <div class="col m6 s12 input-field">
                                    <i class="material-icons prefix">class</i>
                                    <input id="cto_cargo" name="cto_cargo" type="text" class="validate" required="" value="<%=c.getCto_cargo() %>">
                                    <label for="cto_cargo" >Cargo</label>
                                </div>

                                <div class="col m6 s12 input-field">
                                    <i class="material-icons prefix">phone</i>
                                    <input value="<%=c.getCto_fijo() %>" id="cto_fijo" name="cto_fijo" type="text" pattern="\d{3}[\-]\d{3}[\-]\d{4}" placeholder="999-999-9999" class="validate" required="">
                                    <label for="cto_fijo">Teléfono</label>
                                </div>
                            </div>

                            <div class="col m6 s12 input-field">
                                <i class="material-icons prefix">stay_current_portrait</i>
                                <input value="<%=c.getCto_celular() %>" id="cto_celular" name="cto_celular" type="text" pattern="\d{3}[\-]\d{3}[\-]\d{4}" placeholder="999-999-9999" class="validate" required="">
                                <label for="cto_celular">Celular</label>
                            </div>

                            <div class="col m6 s12 input-field">
                                <i class="material-icons prefix">payment</i>
                                <input value="<%=c.getCto_cde() %>" id="cto_cde" name="cto_cde" type="text" class="validate" required="">
                                <label for="cto_cde">CDE</label>
                            </div>

                            <div class="col m6 s12 input-field">
                                <input value="<%=c.getCto_direccion() %>" id="cto_direccion" name="cto_direccion" type="text" class="validate" required="">
                                <label for="cto_direccion">Dirección</label>
                            </div>

                            <div class="col m6 s12 input-field">
                                <input value="<%=c.getCto_ciudad() %>" id="cto_ciudad" name="cto_ciudad" type="text" class="validate" required="">
                                <label for="cto_ciudad">Ciudad</label>
                            </div>

                            <div class="col m6 s12 input-field">
                                <input value="<%=c.getCto_departamento() %>" id="cto_departamento" name="cto_departamento" type="text" class="validate" required="">
                                <label for="cto_departamento">Deparamento</label>
                            </div>

                            <div class="col m6 s12 input-field">
                                <input value="<%=c.getCto_pais() %>" id="cto_pais" name="cto_pais" type="text" class="validate" required="">
                                <label for="cto_pais">País</label>
                            </div>

                            <div class="col m6 s12 input-field">
                                <div class="row">
                                    <div class="input-field col s12">
                                        <i class="material-icons prefix">note_add</i>
                                        <textarea id="cto_notas" name="cto_notas" class="materialize-textarea" maxlength="150"><%=c.getCto_notas() %></textarea>
                                        <label for="cto_notas">Notas:</label>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row center">
                            <button class="btn btn-lg btn-primary btn-block" type="submit">Guardar contacto</button>
                        </div>

                    </div>
                </div>
            </form>
        </div>
        <%@include file="plantilla/footer.jsp" %>
        <%@include file="plantilla/scritp.jsp" %>
        <script src="../js/registrarContacto.js"></script>
    </body>
</html>