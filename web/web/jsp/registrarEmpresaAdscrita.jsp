<%-- 
    Document   : registrarEmpresaAdscrita
    Created on : 23-oct-2016, 18:47:28
    Author     : manue
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no"/>

        <title>Crear Contacto</title>
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
                    <a href="../jsp/dashboard.jsp" class="breadcrumb">Contactos</a>
                    <a href="../jsp/registrarEmpresaAdscrita.jsp" class="breadcrumb">Registro de Empresa Adscrita</a>
                </div>
            </div>
        </nav>

        <div class="container">
            <form class="" action="" method="post">
                <div class="row">

                    <h5 class="center">Programa de Fortalecimiento Empresarial</h5>

                    <div class="input-field col m6 s12">
                        <input id="first_name" type="text" class="validate">
                        <label for="first_name">Nombre Empresa</label>
                    </div>

                    <div class="input-field col m6 s12">
                        <input id="last_name" type="text" class="validate">
                        <label for="last_name">Nombre Gerente</label>
                    </div>

                    <div class="input-field col m6 s12">
                        <i class="material-icons prefix" >email</i>
                        <input id="email" type="email" class="validate">
                        <label for="email">Email</label>
                    </div>

                    <div class="input-field col m6 s12">
                        <i class="material-icons prefix">class</i>
                        <input id="icon_prefix" type="text" class="validate">
                        <label for="icon_prefix">Página web</label>
                    </div>

                    <div class="input-field col m6 s12">
                        <i class="material-icons prefix">phone</i>
                        <input id="icon_telephone" type="tel" class="validate">
                        <label for="icon_telephone">Teléfono</label>
                    </div>

                    <div class="row center">
                        <input class="btn green" type="submit" value="Registrar">
                    </div>

                </div>
            </form>
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
