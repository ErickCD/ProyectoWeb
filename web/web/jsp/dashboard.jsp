<%-- 
    Document   : dashboard
    Created on : 26-nov-2016, 12:18:10
    Author     : Manuel Florez
--%>

<%@page import="co.edu.ufps.dto.EmpresaAdscrita"%>
<%@page import="co.edu.ufps.dto.Contacto"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="co.edu.ufps.controlador.Controlador" id="controlador" scope="session"></jsp:useBean>
<jsp:useBean class="co.edu.ufps.dto.Usuario" id="usuario" scope="session"></jsp:useBean>
    <!DOCTYPE html>
    <html>
        <head>
            <title>Dashboard</title>
        <%@include file="plantilla/style.jsp" %>
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

            <ul class="collapsible" data-collapsible="accordion">
                <%  String tipoDeUsuario = usuario.getUser();
                    if (tipoDeUsuario.equals("Asesor")) {%>
                <li>
                    <div class="collapsible-header"><i class="material-icons">filter_drama</i><%=tipoDeUsuario%></div>
                    <div class="collapsible-body">
                        <p>Operaciones sobre el Contacto<br>
                            <a href="registrarContacto.jsp" class="btn green">Registrar Contacto</a>
                            <button onclick="verPanelDeBusqueda()" class="btn green">Buscar Contacto</button>
                        </p>
                    </div>
                </li>
                <%  } else {
                    if (tipoDeUsuario.equals("Entidad")) {%>
                <li>
                    <div class="collapsible-header"><i class="material-icons">place</i><%=tipoDeUsuario%></div>
                    <div class="collapsible-body">
                        <p>Operaciones sobre el Cliente<br>
                            <a href="editarDatosEntidadAdscrita.jsp" class="btn green">Editar mis datos</a>
                            <a href="registrarContacto.jsp" class="btn green">Registrar Contacto</a>
                            <br><br>
                        </p>
                    </div>
                </li>
                <%      } else {%>
                <li>
                    <div class="collapsible-header"><i class="material-icons">whatshot</i><%=tipoDeUsuario%></div>
                    <div class="collapsible-body">
                        <p>Operaciones sobre la empresa adscrita<br>
                            <a href="registrarEmpresaAdscrita.jsp" class="btn green">Registrar Empresas Adscritas</a>
                            <button onclick="verPanelDeBusquedaAds()" class="btn green">Buscar Empresas Adscritas</button>
                            <button onclick="" class="btn green">Asignar Logros</button>
                        </p>
                    </div>
                </li>
                <%        }
                    }%>
            </ul>


            <br>
            <div id="respuesta"></div><br><br>

            <!-- panel de opciones que se carga con Ajax -->
            <div id="opc" class="hide">
                <div class="row">
                    <div class="input-field container col l4">
                        <select name="busqueda" id="busqueda">
                            <option value="cedula" selected="">Cedula</option>
                            <option value="email">E-mail</option>
                        </select>
                        <label>Tipo De busqueda</label>
                    </div>
                    <div class="input-field container col l4">
                        <input type="text" name="parametro" id="parametro">
                        <label>dato</label>
                    </div>
                    <div class="input-field container col l4">
                        <button class="btn" onclick="buscar()">buscar</button>
                    </div>
                </div>

                <button onclick="ocultarPanelDeBusqueda()" class="btn blue-grey">Ocultar</button><hr>
            </div>

            <div id="respuesta2"></div><br><br>

            <!-- panel de opciones que se carga con Ajax -->
            <div id="opc2" class="hide">
                <div class="row">
                    <div class="input-field container col l4">
                        <select name="busqueda" id="busqueda2">
                            <option value="nombre_empresa" selected="">Nombre Empresa</option>
                            <option value="nombre_gerente">Nombre Gerente</option>
                            <option value="email">Email</option>
                            <option value="sitio_web">Sitio Web</option>
                            <option value="telefono">telefono</option>
                        </select>
                        <label>Tipo De busqueda</label>
                    </div>
                    <div class="input-field container col l4">
                        <input type="text" name="parametro" id="parametro2">
                        <label>dato</label>
                    </div>
                    <div class="input-field container col l4">
                        <button class="btn" onclick="buscarAds()">buscar</button>
                    </div>
                </div>

                <button onclick="ocultarPanelDeBusquedaAds()" class="btn blue-grey">Ocultar</button><hr>
            </div>


            <!-- tabla para el asesor -->
            <%
                if (tipoDeUsuario.equals("Asesor")) {
                    List<Contacto> listaContactos = controlador.listarContactos(0);
            %>           
            <div><h1>Contactos</h1></div>
            <!-- tabla de contactos -->
            <table class="striped">
                <thead>
                    <tr>
                        <th data-field="name">Nombre</th>
                        <th data-field="price">E-mail</th>
                        <th data-field="price">cedula</th>
                        <th data-field="price">Editar Contacto</th>
                        <th data-field="price">Crear empresa</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        for (Contacto c : listaContactos) {%>
                    <tr>
                        <td><%=c.getCto_nombres()%></td>
                        <td><%=c.getCto_email()%></td>
                        <td><%=c.getCto_cc()%></td>
                        <td><a href="#" class="btn red">Editar</a></td>
                        <td><a href="registrarEmpresa.jsp?emailContacto=<%=c.getCto_email()%>" class="btn">Crear</a></td>
                    </tr>
                    <% }%>
                </tbody>
            </table>
            <!-- tabla de contactos -->    
            <%} else {
                if (tipoDeUsuario.equals("Entidad")) {
                    List<EmpresaAdscrita> l = controlador.mostrarEmpresasAdscritas(0);
            %>
            <div><h1>Empresas</h1></div>
            <!-- tabla de empresas adscritas -->
            <table class="striped">
                <thead>
                    <tr>
                        <th>Nombre Empresa</th>
                        <th>Email</th>
                        <th>Sitio web</th>
                        <th>Gerente</th>
                        <th>Telefono</th>
                    </tr>
                </thead>

                <tbody>
                    <% for (EmpresaAdscrita e : l) {%>
                    <tr>
                        <td><%=e.getNombre_empresa()%></td>
                        <td><%=e.getEmail()%></td>
                        <td><%=e.getSitio_web()%></td>
                        <td><%=e.getNombre_gerente()%></td>
                        <td><%=e.getTelefono() %></td>
                    </tr>
                    <%}%>
                </tbody>
            </table>
            <!-- tabla de empresas adscritas -->

            <%} else {
                 List<EmpresaAdscrita> l = controlador.mostrarEmpresasAdscritas(0);
            %>

            <div><h1>Empresas Adscritas</h1></div>
            <!-- tabla de empresas adscritas -->
            <table class="striped">
                <thead>
                    <tr>
                        <th>Nombre Empresa</th>
                        <th>Email</th>
                        <th>Sitio web</th>
                        <th>gerente</th>
                        <th>Editar</th>
                        <th>Registrar Servicio</th>
                    </tr>
                </thead>

                <tbody>
                    <% for (EmpresaAdscrita e : l) {%>
                    <tr>
                        <td><%=e.getNombre_empresa()%></td>
                        <td><%=e.getEmail()%></td>
                        <td><%=e.getSitio_web()%></td>
                        <td><%=e.getNombre_gerente()%></td>
                        <td><a href="editarDatosEntidadAdscrita.jsp?nombre_empresa=<%=e.getNombre_empresa() %>" class="btn red">Editar</a></td>
                        <td><a href="#" class="btn">Registrar</a></td>
                    </tr>
                    <%}%>
                </tbody>
            </table>
            <!-- tabla de empresas adscritas -->

            <%}
                }%>
        </div>

        <%@include file="plantilla/footer.jsp" %>
        <%@include file="plantilla/scritp.jsp" %>
        <script src="../js/Asesor/buscarContacto.js"></script>
        <script src="../js/Administrador/buscarEmpresaAdscrita.js"></script>
        <script>
                    $(document).ready(function () {
                        $('select').material_select();
                    });
        </script>
    </body>
</html>