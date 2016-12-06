<%-- 
    Document   : dashboard
    Created on : 26-nov-2016, 12:18:10
    Author     : Manuel Florez
--%>

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
                    <a href="login.jsp" class="breadcrumb">Ingresar</a>
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
                            <script>
                                function verPanelDeBusqueda() {
                                    $("#opc").removeClass("hide");
                                }
                                function ocultarPanelDeBusqueda() {
                                    $("#opc").addClass("hide");
                                }
                            </script>
                        </p>
                    </div>
                </li>
                <%  } else {
                    if (tipoDeUsuario.equals("Entidad")) {%>
                <li>
                    <div class="collapsible-header"><i class="material-icons">place</i><%=tipoDeUsuario%></div>
                    <div class="collapsible-body">
                        <p>Operaciones sobre el Cliente<br>
                            <a href="#ConsultarEmpresa" class="btn green">Consultar Empresa</a>
                            <a href="#ConsultarEmpresaTuristica" class="btn green">Consultar Empresa Turistica</a>
                            <br><br>
                            <a href="#registrarContacto.jsp" class="btn green">Crear Contacto</a>
                        </p>
                    </div>
                </li>
                <%      } else {%>
                <li>
                    <div class="collapsible-header"><i class="material-icons">whatshot</i><%=tipoDeUsuario%></div>
                    <div class="collapsible-body">
                        <p>Operaciones sobre la empresa adscrita<br>
                            <a href="#registrarEmpresaAdscrita.jsp" class="btn green">Registrar Empresas Adscritas</a>
                            <a href="#ConsultarEmpresaTuristica" class="btn green">Consultar Empresas Adscritas</a>
                            <button onclick="" class="btn green">Asignar Logros</button>
                        </p>
                    </div>
                </li>
                <%        }
                    }%>
            </ul>

            <!-- panel de opciones que se carga con Ajax -->
            <div id="opc" class="hide">
                <form action="">
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
                            <input class="btn" type="submit" value="buscar">
                        </div>
                    </div>
                </form>

                <br>
                <button onclick="ocultarPanelDeBusqueda()" class="btn blue-grey">Ocultar</button>
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
                        <th data-field="price">Crear empresa</th>
                    </tr>
                </thead>

                <tbody>
                    <%
                        for (Contacto c : listaContactos) {%>
                    <tr>
                        <td><%=c.getCto_nombres()%></td>
                        <td><%=c.getCto_email()%></td>
                        <td><a href="#" class="btn">Registrar</a></td>
                    </tr>
                    <% }
                    %>
                </tbody>
            </table>
            <!-- tabla de contactos -->    
            <%} else {
                if (tipoDeUsuario.equals("Entidad")) {%>
            <div><h1>Empresas</h1></div>
            <!-- tabla de empresas adscritas -->
            <table class="striped">
                <thead>
                    <tr>
                        <th data-field="id">id</th>
                        <th data-field="name">Nombre Empresa</th>
                        <th data-field="price"></th>
                        <th data-field="price">Crear empresa</th>
                    </tr>
                </thead>

                <tbody>
                    <tr>
                        <td>1</td>
                        <td>Eclair</td>
                        <td>$0.87</td>
                        <td><a href="#" class="btn">Registrar</a></td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>Jellybean</td>
                        <td>$3.76</td>
                        <td><a href="#" class="btn">Registrar</a></td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>Lollipop</td>
                        <td>$7.00</td>
                        <td><a href="#" class="btn">Registrar</a></td>
                    </tr>
                </tbody>
            </table>
            <!-- tabla de empresas adscritas -->
            <%  } else { %>
            <div><h1>Empresas Adscritas</h1></div>

            <% }

                }%>
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