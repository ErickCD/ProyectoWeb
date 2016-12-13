<%-- 
    Document   : registrarContacto
    Created on : 20-oct-2016, 19:30:44
    Author     : Erick Clair
--%>

<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="co.edu.ufps.controlador.Controlador" id="controlador" scope="session"></jsp:useBean>
<jsp:useBean class="co.edu.ufps.dto.Usuario" id="usuario" scope="session"></jsp:useBean>
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
                    <a href="registrarContacto.jsp" class="breadcrumb">Registro de Contacto</a>
                </div>
            </div>
        </nav>

        <div class="container">
            <form id="contacto" action="proceso/control_Contacto.jsp" method="POST">
                <div class="row">

                    <h5 class="center">Programa de Fortalecimiento Empresarial</h5>

                    <div class="col S12">
                        <div class="col m4">
                            <label for="cto_consecutivo">Concecutivo</label>
                            <input value="01-000<%=controlador.numeroConsecutivoContacto()%>" id="cto_consecutivo" name="cto_consecutivo" type="text" disabled >
                        </div>

                        <div class="col m4 input-field">
                            <i class="material-icons prefix">today</i>
                            <%
                                Date s = new Date();
                                String fecha = s.getYear() + 1900 + "-" + (s.getMonth() + 1) + "-" + s.toGMTString().substring(0, 1);
                            %>
                            <input id="fecha" name="fecha" type="text" value="<%=fecha%>" disabled required="">
                        </div>

                        <div class="col m4 s12 input-field">
                            <label for="cto_asesor">Asesor</label>
                            <input id="asesor" name="asesor" type="text" class="validate" value="<%=usuario.getNombre()%>" disabled>
                        </div>

                        <div class="col s12 input-field">
                            <label for="cto_nombres">Nombres</label>
                            <input id="cto_nombres" name="cto_nombres" type="text" class="validate" required="">
                        </div>

                        <div class="col s12 m6 input-field">
                            <input id="cto_apellidos" name="cto_apellidos" type="text" class="validate" required="">
                            <label for="cto_apellidos" >Apellidos</label>
                        </div>

                        <div class="col s12 m6 input-field">
                            <input id="cto_cc" name="cto_cc" type="number" class="validate" required="">
                            <label for="cto_cc">Nro CC.</label>
                        </div>

                        <div class="col s12 m6">
                            <label>Género</label>
                            <select id="cto_genero" name="cto_genero" class="browser-default" required="">
                                <option value="Masculino">Masculino</option>
                                <option value="Femenino">Femenino</option>
                                <option value="LGBTI">LGBTI</option>
                            </select>
                        </div>

                        <div class="col m6 s12 input-field">
                            <i class="material-icons prefix" >email</i>
                            <input id="cto_email" name="cto_email" type="email" class="validate" required="">
                            <label for="cto_email">Email</label>
                        </div>

                        <div class="col m6 s12 input-field">
                            <div id="cto_email_masivo">
                                <label for="cto_email_masivo_t1">¿Desea resibir correo electronico maxivo?</label><br>
                                <p>
                                    <input name="cto_email_masivo" type="radio" id="cto_email_masivo_t1" required="" />
                                    <label for="cto_email_masivo_t1" >Si</label>
                                </p>
                                <p>
                                    <input name="cto_email_masivo" type="radio" id="cto_email_masivo_t2" required="" />
                                    <label for="cto_email_masivo_t2">No</label>
                                </p>
                            </div>
                        </div>

                        <div class="col m6 s12 input-field">
                            <i class="material-icons prefix">class</i>
                            <input id="cto_cargo" name="cto_cargo" type="text" class="validate" required="">
                            <label for="cto_cargo" >Cargo</label>
                        </div>

                        <div class="col m6 s12 input-field">
                            <i class="material-icons prefix">phone</i>
                            <input id="cto_fijo" name="cto_fijo" type="text" pattern="\d{3}[\-]\d{3}[\-]\d{4}" placeholder="999-999-9999" class="validate" required="">
                            <label for="cto_fijo">Teléfono</label>
                        </div>

                        <div class="col m6 s12 input-field">
                            <i class="material-icons prefix">stay_current_portrait</i>
                            <input id="cto_celular" name="cto_celular" type="text" pattern="\d{3}[\-]\d{3}[\-]\d{4}" placeholder="999-999-9999" class="validate" required="">
                            <label for="cto_celular">Celular</label>
                        </div>

                        <div class="col m6 s12 input-field">
                            <i class="material-icons prefix">payment</i>
                            <input id="cto_cde" name="cto_cde" type="text" class="validate" required="">
                            <label for="cto_cde">CDE</label>
                        </div>

                        <div class="col m6 s12 input-field">
                            <input id="cto_direccion" name="cto_direccion" type="text" class="validate" required="">
                            <label for="cto_direccion">Dirección</label>
                        </div>

                        <div class="col m6 s12 input-field">
                            <input id="cto_ciudad" name="cto_ciudad" type="text" class="validate" required="">
                            <label for="cto_ciudad">Ciudad</label>
                        </div>

                        <div class="col m6 s12 input-field">
                            <input id="cto_departamento" name="cto_departamento" type="text" class="validate" required="">
                            <label for="cto_departamento">Deparamento</label>
                        </div>

                        <div class="col m6 s12 input-field">
                            <input id="cto_pais" name="cto_pais" type="text" class="validate" required="">
                            <label for="cto_pais">País</label>
                        </div>

                        <div class="col m6 s12 input-field">
                            <div class="row">
                                <div class="input-field col s12">
                                    <i class="material-icons prefix">note_add</i>
                                    <textarea id="cto_notas" name="cto_notas" class="materialize-textarea" maxlength="150"></textarea>
                                    <label for="cto_notas">Notas:</label>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row center">
                        <button class="btn btn-lg btn-primary btn-block" type="submit">Guardar contacto</button>
                    </div>

                </div>
            </form>
        </div>
        <%@include file="plantilla/footer.jsp" %>
        <%@include file="plantilla/scritp.jsp" %>
        <script src="../js/registrarContacto.js"></script>
    </body>
</html>