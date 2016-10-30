<%-- 
    Document   : index
    Created on : 20-oct-2016, 17:01:02
    Author     : Manuel Florez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0, user-scalable=no"/>
        <title>MinCIT</title>

        <!-- CSS  -->
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link href="/web/css/materialize.min.css" type="text/css" rel="stylesheet" media="screen,projection"/>
        <link href="/web/css/style.css" type="text/css" rel="stylesheet" media="screen,projection"/>
    </head>
    <body>
        <nav class="white" role="navigation">
            <div class="nav-wrapper container">
                <div class="hide-on-small-only">
                    <a id="logo-container" href="../web/index.jsp" class="brand-logo">
                        <img src="img/a.png" alt="logo" />
                    </a>
                </div>
                <ul class="right hide-on-med-and-down">
                    <li><a href="jsp/login.jsp">Ingresar</a></li>
                </ul>
                <ul id="nav-mobile" class="side-nav">
                    <li><a href="jsp/login.jsp">Ingresar</a></li>
                </ul>
                <a href="#" data-activates="nav-mobile" class="button-collapse"><i class="material-icons">menu</i></a>
            </div>
        </nav>

        <div id="index-banner" class="parallax-container">
            <div class="parallax"><img src="img/background1.jpg" alt="Unsplashed background img 1"></div>
        </div>

        <div class="white">
            <div class="container">
                <div class="section">

                    <!--   Icon Section   -->
                    <div class="row">
                        <div class="col s12 m4">
                            <div class="icon-block">
                                <a href="jsp/registrarContacto.jsp"><h2 class="center brown-text"><i class="material-icons">contacts</i></h2></a>
                                <h5 class="center">Formato de creación de contacto</h5>

                                <p class="light">Cree su contacto o asista directamente a las oficinas del MinCIT para que
                                    posterior a su registro, pueda registrar a su empresa.
                                </p>
                            </div>
                        </div>

                        <div class="col s12 m4">
                            <div class="icon-block">
                                <a href="jsp/login.jsp"><h2 class="center brown-text"><i class="material-icons">group</i></h2></a>
                                <h5 class="center">Registro de Empresas.</h5>

                                <p class="light">Si ya se registro como usuario, no dude en acudir a las oficinas del MinCIT para que pueda
                                    registrarse como empresa y progresar.</p>
                            </div>
                        </div>

                        <div class="col s12 m4">
                            <div class="icon-block">
                                <a href="jsp/login.jsp"><h2 class="center brown-text"><i class="material-icons">settings</i></h2></a>
                                <h5 class="center">Entidades adscritas al MinCIT</h5>

                                <p class="light">Detalles de las empresas adscritas así como sus respectivaspáginas.</p>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>

        <div class="parallax-container valign-wrapper">
            <div class="section no-pad-bot">
                <div class="container">
                    <div class="row center">
                        <h5 class="header col s12 light">Una forma segura de hacer crecer tu negocio.</h5>
                    </div>
                </div>
            </div>
            <div class="parallax"><img src="img/background2.jpg" alt="Unsplashed background img 2"></div>
        </div>

        <div class="white">
            <div class="container">
                <div class="section">

                    <div class="row">
                        <div class="col s12 center">
                            <h3><i class="mdi-content-send brown-text"></i></h3>
                            <h4>Contactanos</h4>
                            <p class="center ">Exención de Responsabilidad - Línea Gratuita 018000958283 - PBX: (+571) 6067676, Fax: (+571) 6067522
                                2011 (c) Ministerio de Comercio, Industria y Turismo, República de Colombia.<br>
                                Calle 28 No. 13 A – 15 - Horarios y días de atención al público: de lunes a viernes de 8:30 a.m. a 5:00 p.m.
                                Contáctenos - Línea de atención al usuario: 018000958283  - Bogotá - Colombia</p>
                        </div>
                    </div>

                </div>
            </div>
        </div>


        <div class="parallax-container valign-wrapper">
            <div class="section no-pad-bot">
                <div class="container">
                    <div class="row center">
                        <h5 class="header col s12 light">Aprovecha nuestros enlaces a otras compañias.</h5>
                    </div>
                </div>
            </div>
            <div class="parallax"><img src="img/background4.jpg" alt="Unsplashed background img 3"></div>
        </div>

        <footer class="page-footer teal">
            <div class="container">
                <div class="row">
                    <div class="col m4 s12 center">
                        <h5 class="white-text">MinCIT</h5>
                        <p class="grey-text text-lighten-4">MiCITio Cúcuta se encuentra operando desde el 07 de Octubre de 2015. 
                            Desde su apertura se ha atendido a 134 usuarios entre empresarios, emprendedores y ciudadanos.</p>
                        <img src="img/ufps.png" width="150px" height="150px" alt="UFPS" />
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
                        <img src="img/sistemasufps.png" width="150px" height="150px" alt="UFPS" />
                    </div>

                </div>
            </div>
            <div class="footer-copyright">
                <div class="container">
                    Realizado por <a class="brown-text text-lighten-3">Manuel Florez y Erick Clair</a>
                </div>
            </div>
        </footer>


        <!--  Scripts-->
        <script src="/web/js/jquery-2.1.1.min.js"></script>
        <script src="/web/js/materialize.min.js"></script>
        <script src="/web/js/init.js"></script>
    </body>
</html>
