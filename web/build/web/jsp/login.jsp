<%-- 
    Document   : login
    Created on : 20-oct-2016, 19:00:25
    Author     : Manuel Florez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no"/>
        <title>Login</title>

        <!-- CSS  -->
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link href="../css/materialize.min.css" type="text/css" rel="stylesheet" media="screen,projection"/>
        <link href="../css/style.css" type="text/css" rel="stylesheet" media="screen,projection"/>


    </head>
    <body>
        <nav>
            <div class="nav-wrapper container">
                <div class="col s12">
                    <a href="../index.jsp" class="breadcrumb">MinCIT</a>
                    <a href="../jsp/login.jsp" class="breadcrumb">Ingresar</a>
                </div>
            </div>
        </nav>
        <div class="container">


            <div class="row">

                <div class="col s12 m12">
                    <div class="card">

                        <form class="form-signin" action="../jsp/usuario.jsp" method="POST">
                            <%
                                String error = (String) session.getAttribute("error");
                                if (error != null) {
                            %>
                            <div class="alert alert-danger" role="alert">
                                <strong>:(</strong> <%= error%>
                            </div>
                            <%
                                }
                            %>

                            <div class="row">

                                <div class="card-content m6 s12 ">
                                    <h2 class="form-signin-heading">Por favor ingrese...</h2>
                                    <div class="container">
                                        <label for="inputEmail" class="sr-only">Dirección de e-mail</label>
                                        <input name="user" type="email" id="inputEmail" class="form-control" placeholder="Dirección de e-mail" required autofocus>
                                        <label for="inputPassword" class="sr-only">Password</label>
                                        <input name="password" type="password" id="inputPassword" class="form-control" placeholder="Contraseña" required>
                                    </div>
                                </div>
                                <div class="card-content m4 s12 center">
                                    <div class="container">
                                    </div>
                                </div>
                            </div>


                            <div class="card-action">
                                <!-- EL onClick es temporal -->
                                <button class="btn btn-lg btn-primary btn-block" type="submit">Ingresar</button>
                            </div>
                        </form>

                    </div>
                </div>

            </div>

        </div>
        <footer class="page-footer teal">
            <div class="container">
                <div class="row">
                    <div class="col m4 s12 center">
                        <h5 class="white-text">MinCIT</h5>
                        <p class="grey-text text-lighten-4">MiCITio Cúcuta se encuentra operando desde el 07 de Octubre de 2015. 
                            Desde su apertura se ha atendido a 134 usuarios entre empresarios, emprendedores y ciudadanos.</p>
                        <img src="../img/ufps.png" width="150px" height="150px" alt="UFPS" />
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
                        <img src="../img/sistemasufps.png" width="150px" height="150px" alt="UFPS" />
                    </div>

                </div>
            </div>
            <div class="footer-copyright">
                <div class="container">
                    Realizado por <a class="brown-text text-lighten-3" href="http://materializecss.com">Manuel Florez y Erick Clair</a>
                </div>
            </div>
        </footer>
        <!--  Scripts-->
        <script src="../js/jquery-2.1.1.min.js"></script>
        <script src="../js/materialize.min.js"></script>
        <script src="../js/init.js"></script>
    </body>
</html>
