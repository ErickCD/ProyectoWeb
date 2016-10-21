<%-- 
    Document   : crearContacto
    Created on : 18/10/2016, 12:43:46 PM
    Author     : Clair
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Crear contacto</title>

        <!-- CSS  -->
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link href="../css/materialize.css" type="text/css" rel="stylesheet" media="screen,projection"/>
        <link href="../css/style.css" type="text/css" rel="stylesheet" media="screen,projection"/>
    </head>
    <body>
        <nav class="white" role="navigation">
            <div class="nav-wrapper container">
                <a id="logo-container" href="../index.jsp" class="brand-logo">
                    <img src="../img/a.png" alt="logo" />
                </a>
                <ul class="right hide-on-med-and-down">
                    <li><a href="../index.jsp">Salir</a></li>
                </ul>

                <ul id="nav-mobile" class="side-nav">
                    <li><a href="../index.jsp">Salir</a></li>
                </ul>
                <a href="#" data-activates="nav-mobile" class="button-collapse"><i class="material-icons">menu</i></a>
            </div>
        </nav>


        <div class="container">
            <div class="row">
                <div class="input-field col m6 s12">
                    <input id="nombre" type="text" class="validate">
                    <label for="nombre">Nombre (s)</label>
                </div>

                <div class="input-field col m6 s12">
                    <input id="apellido" type="text" class="validate">
                    <label for="apellido">Apellidos</label>
                </div>

                <div class="input-field col m6 s12">
                    <input id="nro_cc" type="text" class="validate">
                    <label for="nro_cc">NRO. C.C:</label>
                </div>

                <div class="col m6 s12">
                    <label for="test1">Genero</label>
                    <p>
                        <input name="test1" type="radio" id="test1" />
                        <label for="test1">Masculino</label>
                    </p>
                    <p>
                        <input name="test2" type="radio" id="test2" />
                        <label for="test2">Femenino</label>
                    </p>
                    <p>
                        <input name="test3" type="radio" id="test3"  />
                        <label for="test3">LGBTI</label>
                    </p>
                </div>

                <div class="input-field col m6 s12">
                    <label for="email" class="sr-only">Dirección de e-mail</label>
                    <input type="email" id="email" class="form-control" placeholder="Dirección de e-mail" required autofocus>
                </div>

                <div class="col m6 s12">
                    <label for="t4">¿Correo masivo?</label>
                    <p>
                        <input name="group1" type="radio" id="test4" />
                        <label for="test4">Si</label>
                    </p>
                    <p>
                        <input name="group1" type="radio" id="test5" />
                        <label for="test5">No</label>
                    </p>
                </div>

                <div class="input-field col m6 s12">
                    <i class="material-icons prefix">class</i>
                    <input id="last_name" type="text" class="validate">
                    <label for="cargo">Cargo</label>
                </div>

                <div class="input-field col m6 s12">
                    <i class="material-icons prefix">phone</i>
                    <input id="last_name" type="text" class="validate">
                    <label for="last_name">Teléfono fijo:</label>
                </div>

                <div class="input-field col m6 s12">
                    <i class="material-icons prefix">stay_current_portrait</i>
                    <input id="last_name" type="text" class="validate">
                    <label for="last_name">Teléfono celular:</label>
                </div>

                <div class="input-field col m6 s12">
                    <input id="last_name" type="text" class="validate">
                    <label for="last_name">CDE:</label>
                </div>

                <div class="input-field col m6 s12">
                    <input id="dirección" type="text" class="validate">
                    <label for="last_name">Dirección:</label>
                </div>

                <div class="input-field col m6 s12">
                    <input id="last_name" type="text" class="validate">
                    <label for="last_name">Ciudad:</label>
                </div>

                <div class="input-field col m6 s12">
                    <input id="last_name" type="text" class="validate">
                    <label for="last_name">Departamento:</label>
                </div>

                <div class="input-field col m6 s12">
                    <input id="last_name" type="text" class="validate">
                    <label for="last_name">Pais:</label>
                </div>

                <div class="col m12 s12">
                    <form class="col s12">
                        <div class="row">
                            <div class="input-field col s12">
                                <i class="material-icons prefix">note_add</i>
                                <textarea id="textarea1" class="materialize-textarea"></textarea>
                                <label for="textarea1">Notas:</label>
                            </div>
                        </div>
                    </form>
                </div>

            </div>
        </div>
    </div>

    <footer class="page-footer teal">
        <div class="container">
            <div class="row">
                <div class="col l6 s12">
                    <h5 class="white-text">MinCIT</h5>
                    <p class="grey-text text-lighten-4">MiCITio Cúcuta se encuentra operando desde el 07 de Octubre de 2015. 
                        Desde su apertura se ha atendido a 134 usuarios entre empresarios, emprendedores y ciudadanos.</p>


                </div>
                <div class="col l3 s12">
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

                <div class="col l3 s12">
                    <h5 class="white-text">Desarrolladores</h5>
                    <ul>
                        <li><a href="mailto:acheron_1405@hotmail.com" class="white-text">acheron_1405@hotmail.com</a></li>
                        <li><a href="mailto:manuelflorezw@outlook.com" class="white-text">manuelflorezw@outlook.com</a></li>
                    </ul>
                </div>

            </div>
        </div>
        <div class="footer-copyright">
            <div class="container">
                Realizado por <a class="brown-text text-lighten-3" href="../http://materializecss.com">Manuel Florez y Erick Clair</a>
            </div>
        </div>
    </footer>

    <!--  Scripts-->
    <script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <script src="../js/materialize.js"></script>
    <script src="../js/init.js"></script>
</body>
</html>
