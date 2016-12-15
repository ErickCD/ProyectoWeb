<%-- 
    Document   : registrarServicioDeEntidad
    Created on : 14-dic-2016, 10:58:23
    Author     : Manuel Florez
--%>

<%@page import="co.edu.ufps.dto.Servicio_Logro"%>
<%@page import="co.edu.ufps.dto.Logro"%>
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
    // carga los logros de la base de datos en el combo
    List<Logro>logros = controlador.listarLogros();
    

    // carga los Servicio_Logros de la empresaAdscrita
    List<Servicio_Logro>s_l = controlador.servicio_logro(e);
    
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
            <h5>Actuales Servicios de<%=e.getNombre_empresa()%> </h5>
            <table class="striped">
                <thead>
                    <tr>
                        <th data-field="name">Servicio</th>
                        <th data-field="price">Logros</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Servicio 1</td>
                        <td>
                            <ul>
                                <li>logro 1</li>
                                <li>logro 2</li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <td>Servicio 2</td>
                        <td>
                            <ul>
                                <li>logro 1</li>
                                <li>logro 2</li>
                            </ul>
                        </td>
                    </tr>
                </tbody>
            </table><hr><br><br><br><br>
            
            <h5 class="center">Asiganar Servicio a la empresa <%=e.getNombre_empresa()%>!</h5>
            <div class="row">
                <div class="col m6 s12">
                    <label>servicio</label>
                    <select name="servicio" id="servicio">
                        <% for (Servicio s:servicios) {%>
                        <option value="<%=s.getId() %>">servivio <%=s.getNombre() %> </option>
                        <%}%>
                    </select>
                </div>
                <div class="col m6 s12">
                    <label>Lgro</label>
                    <select name="logro" id="logro">
                        <% for (Logro l:logros) {%>
                        <option value="<%=l.getId() %>"><%=l.getNombre() %> </option>
                        <%}%>
                    </select>
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
