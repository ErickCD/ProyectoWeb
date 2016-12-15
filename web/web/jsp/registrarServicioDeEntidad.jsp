<%-- 
    Document   : registrarServicioDeEntidad
    Created on : 14-dic-2016, 10:58:23
    Author     : Manuel Florez
--%>

<%@page import="co.edu.ufps.dto.Servicio"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="co.edu.ufps.dto.EmpresaAdscrita"%>
<jsp:useBean class="co.edu.ufps.controlador.Controlador" id="controlador" scope="session"></jsp:useBean>
<jsp:useBean class="co.edu.ufps.dto.Usuario" id="usuario" scope="session"></jsp:useBean>
<%
    String nombre_empresa = request.getParameter("nombre_empresa");
    EmpresaAdscrita e = controlador.buscarEmpresaAds(nombre_empresa);

    // cargar los servicios de la base de datos en el combo 
    List<Servicio>servicios = controlador.listarServicios();
    

%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="plantilla/style.jsp" %>
        <title>Asignar Servicio</title>
    </head>
    <body>
        <nav>
            <div class="nav-wrapper container">
                <div class="col s12">
                    <a href="home.jsp" class="breadcrumb">MinCIT</a>
                    <a href="dashboard.jsp" class="breadcrumb">Dashboard</a>
                </div>
            </div>
        </nav>

        <div class="container">
            <h5 class="center">Asiganar Servicio a la empresa <%=e.getNombre_empresa()%>!</h5>
            <div class="row">
                <div class="col m6 s12">
                    <label>servicio</label>
                    <select name="busqueda" id="busqueda">
                        <% for (int i = 1; i < 6; i++) {%>
                        <option value="cedula">servivio <%=i%> </option>
                        <%}%>
                    </select>
                    <label>Tipo De busqueda</label>
                </div>
                <div class="col m6 s12">
                    <label>Lgro</label>
                    <select name="busqueda" id="busqueda">
                        <% for (int i = 1; i < 6; i++) {%>
                        <option value="cedula">Logro <%=i%> </option>
                        <%}%>
                    </select>
                    <label>Tipo De busqueda</label>
                </div>
                <br><br><br>
                <div class="row center">
                    <input class="btn green" type="submit" value="Agregar">
                </div>
            </div>
            <hr>

            <%-- nuevo Servicio --%>
            <div>
                <div class="row">
                    <h5 class="center">Agregar nuevo servicio</h5>
                    <div class="col m6 s12 center">

                        <label>agregar nuevo servicio</label>
                        <input type="text" placeholder="servicio" />
                    </div>
                    <div class="col m6 s12 center">
                        <label>guardar</label><br>
                        <input type="submit" value="agregar servicio" class="btn green" />
                    </div>
                </div>
            </div>


            <hr>
            
            <%-- nuevo Logro --%>
            <div>
                <div class="row">
                    <h5 class="center">Agregar nuevo Logro</h5>
                    <div class="col m6 s12 center">

                        <label>Agregar nuevo Logro</label>
                        <input type="text" placeholder="servicio" />
                    </div>
                    <div class="col m6 s12 center">
                        <label>guardar</label><br>
                        <input type="submit" value="agregar servicio" class="btn green" />
                    </div>
                </div>
            </div>

        </div>

        <%@include file="plantilla/footer.jsp" %>
        <%@include file="plantilla/scritp.jsp" %>
        <script>
            $(document).ready(function () {
                $('select').material_select();
            });
        </script>
    </body>
</html>
