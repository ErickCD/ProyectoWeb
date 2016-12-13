<%-- 
    Document   : home
    Created on : 25-nov-2016, 21:56:27
    Author     : Manuel Florez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% session.invalidate();%>
<html>
    <head>
        <title>MinTi</title>
        <%@include file="plantilla/style.jsp" %>
        <link href="../css/style.css" type="text/css" rel="stylesheet" media="screen,projection"/>
    </head>
    <body>
        <nav class="white" role="navigation">
            <div class="nav-wrapper container">
                <div class="hide-on-small-only">
                    <a id="logo-container" href="home.jsp" class="brand-logo">
                        <img src="../img/a.png" alt="logo" />
                    </a>
                </div>
                <ul class="right hide-on-med-and-down">
                    <li><a href="login.jsp">Ingresar</a></li>
                </ul>
                <ul id="nav-mobile" class="side-nav">
                    <li><a href="login.jsp">Ingresar</a></li>
                </ul>
                <a href="#" data-activates="nav-mobile" class="button-collapse"><i class="material-icons">menu</i></a>
            </div>
        </nav>

        <div id="index-banner" class="parallax-container">
            <div class="parallax"><img src="../img/background1.jpg" alt="Unsplashed background img 1"></div>
        </div>

        <div class="white">
            <div class="container">
                <div class="section">

                    <!--   Icon Section   -->
                    <div class="row">
                        <div class="col s12 m4">
                            <div class="icon-block">
                                <a href="login.jsp"><h2 class="center brown-text"><i class="material-icons">contacts</i></h2></a>
                                <h5 class="center">Formato de creación de contacto</h5>

                                <p class="light">Cree su contacto o asista directamente a las oficinas del MinCIT para que
                                    posterior a su registro, pueda registrar a su empresa.
                                </p>
                            </div>
                        </div>

                        <div class="col s12 m4">
                            <div class="icon-block">
                                <a href="login.jsp"><h2 class="center brown-text"><i class="material-icons">group</i></h2></a>
                                <h5 class="center">Registro de Empresas.</h5>

                                <p class="light">Si ya se registro como usuario, no dude en acudir a las oficinas del MinCIT para que pueda
                                    registrarse como empresa y progresar.</p>
                            </div>
                        </div>

                        <div class="col s12 m4">
                            <div class="icon-block">
                                <a href="login.jsp"><h2 class="center brown-text"><i class="material-icons">settings</i></h2></a>
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
            <div class="parallax"><img src="../img/background2.jpg" alt="Unsplashed background img 2"></div>
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
            <div class="parallax"><img src="../img/background4.jpg" alt="Unsplashed background img 3"></div>
        </div>

        <%@include file="plantilla/footer.jsp" %>
        <%@include file="plantilla/scritp.jsp" %>
        <script src="../js/init.js"></script>
    </body>
</html>

