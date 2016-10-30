<%-- 
    Document   : dashboard
    Created on : 20-oct-2016, 19:34:29
    Author     : Manuel Florez
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="co.edu.ufps.controlador.Controlador" id="controlador"></jsp:useBean>
    <!DOCTYPE html>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
            <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no"/>
            <title>Contactos</title>

            <!-- CSS  -->
            <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
            <link href="/web/css/materialize.min.css" type="text/css" rel="stylesheet" media="screen,projection"/>
            <link href="/web/css/style.css" type="text/css" rel="stylesheet" media="screen,projection"/>

        </head>
        <body>
            <nav>
                <div class="nav-wrapper container">
                    <div class="col s12">
                        <a href=".../index.jsp" class="breadcrumb">MinCIT</a>
                        <a href="../jsp/login.jsp" class="breadcrumb">Ingresar</a>
                        <a href="../jsp/dashboard.jsp" class="breadcrumb">Contactos</a>
                    </div>
                </div>
            </nav>

            <div class="container">
                <ul class="collapsible" data-collapsible="accordion">
                    <li>
                        <div class="collapsible-header"><i class="material-icons">filter_drama</i>Contacto</div>
                        <div class="collapsible-body">
                            <p>Operaciones sobre el Contacto<br>
                                <a href="../jsp/registrarContacto.jsp" class="btn green">Registrar Contacto</a>
                                <a href="#crearContacto.jsp" class="btn green">Buscar Contacto</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="collapsible-header"><i class="material-icons">place</i>Empresa</div>
                        <div class="collapsible-body">
                            <p>Operaciones sobre el Cliente<br>
                                <a href="#ConsultarEmpresa" class="btn green">Consultar Empresa</a>
                                <a href="#" class="btn green">Consultar Empresa Turistica</a>
                                <br><br>
                                <a href="../jsp/crearEmpresa.jsp" class="btn green">Crear Empresa</a>
                                <a href="../jsp/crearEmpresaTuristica.jsp" class="btn green">Crear Empresa Turistica</a>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div class="collapsible-header"><i class="material-icons">whatshot</i>Empresa Adscrita</div>
                        <div class="collapsible-body">
                            <p>Operaciones sobre la empresa adscrita<br>
                                <a href="/web/jsp/registrarEmpresaAdscrita.jsp" class="btn green">Registrar Empresas Adscritas</a>
                                <a href="#ConsultarEmpresaTuristica" class="btn green">Consultar Empresas Adscritas</a>
                            </p>
                        </div>
                    </li>
                </ul>
            </div>

            <!--
                    <h1><%=request.getParameter("email")%></h1>
                    <h1><%=request.getParameter("password")%></h1>
        -->


        <div class="container">

            <div class="alert alert-info">
                <h2><strong>Usuario 'tipo': </strong>Contactos</h2>
            </div>

            <table class="table table-striped striped">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Nombres</th>
                        <th>Apellidos</th>
                        <th>Opciones</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        ArrayList lista = controlador.mostrarFiltroContactos();
                        for (Object lista1 : lista) {
                            Object[] filas = (Object[]) lista1;
                    %>
                    <tr>
                        <td><%=filas[0].toString()%></td>
                        <td><%=filas[1].toString()%></td>
                        <td><%=filas[2].toString()%></td>
                        <td>
                            <a href=".../jsp/crearEmpresaTuristica.jsp " class="btn #26a69a teal lighten-1">Registrar Empresa turistica</a>
                            <a href=".../jsp/registrarContacto.jsp" class="btn #e57373 red lighten-2">Editar</a><hr>
                            <a href=".../jsp/crearEmpresa.jsp" class="btn #2196f3 blue">Registrar Empresa</a>
                        </td>
                    </tr>
                    <%
                        }
                    %>
                </tbody>
            </table>
            <div>
                <br>
                <div class="center">
                    <ul class="pagination">
                        <li class="disabled"><a href="#!"><i class="material-icons">chevron_left</i></a></li>
                        <li class="active"><a href="#!">1</a></li>
                        <li class="waves-effect"><a href="#!"><i class="material-icons">chevron_right</i></a></li>
                    </ul>
                </div>
                <br><br>
            </div>

        </div>

        <footer class="page-footer teal">
            <div class="container">
                <div class="row">
                    <div class="col m4 s12 center">
                        <h5 class="white-text">MinCIT</h5>
                        <p class="grey-text text-lighten-4">MiCITio Cúcuta se encuentra operando desde el 07 de Octubre de 2015. 
                            Desde su apertura se ha atendido a 134 usuarios entre empresarios, emprendedores y ciudadanos.</p>
                        <img src=".../img/ufps.png" width="150px" height="150px" alt="UFPS" />
                    </div>
                    <div class="col m4 s12 center">
                        <h5 class="white-text">Entidades adcritas</h5>
                        <ul>
                            <li><a class="white-text" href="https://www.fiducoldex.com.co/">Fiducoldex</a></li>
                            <li><a class="white-text" href="http://www.fng.gov.co/ES">FNG</a></li>
                            <li><a class="white-text" href="http://www.sic.gov.co/drupal/acuerdodepaz/">SIC</a></li>
                            <li><a class="white-text" href="http://www.artesaniasdecolombia.com.co/PortalAC/General/template_index.jsf">Artesanias de colombia</a></li>
                            <li><a class="white-text" href="http://www.proexport.com.co/">Procolombia</a></li>
                            <li><a class="white-text" href="http://www.supersociedades.gov.co/Paginas/default.aspx">Superintendecia de sociedades</a></li>
                            <li><a class="white-text" href="http://www.inm.gov.co/">Instituto Nacional de Metrología de Colombia</a></li>
                        </ul>
                    </div>

                    <div class="col m4 s12 center">
                        <h5 class="white-text">Desarrolladores</h5>
                        <ul>
                            <li><a href="mailto:acheron_1405@hotmail.com" class="white-text">acheron_1405@hotmail.com</a></li>
                            <li><a href="mailto:manuelflorezw@outlook.com" class="white-text">manuelflorezw@outlook.com</a></li>
                        </ul>
                        <img src=".../img/sistemasufps.png" width="150px" height="150px" alt="UFPS" />
                    </div>

                </div>
            </div>
            <div class="footer-copyright">
                <div class="container">
                    Realizado por <a class="brown-text text-lighten-3" href="#">Manuel Florez y Erick Clair</a>
                </div>
            </div>
        </footer>
        <!--  Scripts-->
        <script src="/web/js/jquery-2.1.1.min.js"></script>
        <script src="/web/js/materialize.min.js"></script>
        <script src="/web/js/init.js"></script>
    </body>
</html>
