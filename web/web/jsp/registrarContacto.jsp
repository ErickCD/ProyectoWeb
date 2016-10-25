<%-- 
    Document   : registrarContacto
    Created on : 20-oct-2016, 19:30:44
    Author     : Manuel Florez
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
        <link href="/web/css/materialize.min.css" type="text/css" rel="stylesheet" media="screen,projection"/>
        <link href="/web/css/style.css" type="text/css" rel="stylesheet" media="screen,projection"/>
    </head>
    <body>
        
        <nav>
            <div class="nav-wrapper container">
                <div class="col s12">
                    <a href="/web/index.jsp" class="breadcrumb">Home</a>
                    <a href="/web/jsp/dashboard.jsp" class="breadcrumb">Dashboard</a>
                    <a href="/web/jsp/crearContacto.jsp" class="breadcrumb">Registro de Contacto</a>
                </div>
            </div>
        </nav>
        
        <div class="container">
            <form class="" action="" method="post">
                <div class="row">

                    <h5 class="center">Programa de Fortalecimiento Empresarial</h5>
                    
                    <i class="material-icons prefix">today</i>
                    <input type="date" class="datepicker" value="Fecha">

                    <div class="row">
                        <div class="input-field col m6 s12">
                            <input id="first_name" type="text" class="validate">
                            <label for="first_name">Nombres</label>
                        </div>
                        <div class="input-field col m6 s12">
                            <input id="last_name" type="text" class="validate">
                            <label for="last_name">Apellidos</label>
                        </div>
                    </div>

                    <div class="col m6 s12">
                        <label>Género</label>
                        <select class="browser-default">
                            <option value="1">Masculino</option>
                            <option value="2">Femenino</option>
                            <option value="3">LGBTI</option>
                        </select>
                    </div>

                    <div class="input-field col m6 s12">
                        <input id="nro_cc" type="number" class="validate">
                        <label for="last_name">Nro CC.</label>
                    </div>
                    <div class="col m6 s12">
                        <label for="t1">¿Desea resibir correo electronico maxivo?</label>
                        <p>
                            <input name="group2" type="radio" id="t1" />
                            <label for="t1">Si</label>
                        </p>
                        <p>
                            <input name="group2" type="radio" id="t2" />
                            <label for="t2">No</label>
                        </p>
                    </div>

                    <div class="col m6 s12">
                        <div class="input-field">
                            <i class="material-icons prefix" >email</i>
                            <input id="email" type="email" class="validate">
                            <label for="email">Email</label>
                        </div>
                    </div>

                    <div class="row">
                        <div class="input-field col m6 s12">
                            <i class="material-icons prefix">class</i>
                            <input id="icon_prefix" type="text" class="validate">
                            <label for="icon_prefix">Cargo</label>
                        </div>
                        <div class="input-field col m6 s12">
                            <i class="material-icons prefix">phone</i>
                            <input id="icon_telephone" type="tel" class="validate">
                            <label for="icon_telephone">Teléfono</label>
                        </div>
                    </div>

                    <div class="row">
                        <div class="input-field col m6 s12">
                            <i class="material-icons prefix">stay_current_portrait</i>
                            <input id="icon_prefix" type="text" class="validate">
                            <label for="icon_prefix">Celular</label>
                        </div>
                        <div class="input-field col m6 s12">
                            <i class="material-icons prefix">payment</i>
                            <input id="cde" type="tel" class="validate">
                            <label for="icon_telephone">CDE</label>
                        </div>
                    </div>

                    <div class="row">
                        <div class="input-field col m6 s12">
                            <input id="direc" type="text" class="validate">
                            <label for="direc">Dirección</label>
                        </div>
                        <div class="input-field col m6 s12">
                            <input id="ciudad" type="text" class="validate">
                            <label for="ciudad">Ciudad</label>
                        </div>
                    </div>

                    <div class="input-field col m6 s12">
                        <input id="departamento" type="text" class="validate">
                        <label for="ciudad">Deparamento</label>
                    </div>
                    <div class="input-field col m6 s12">
                        <input id="pais" type="text" class="validate">
                        <label for="ciudad">País</label>
                    </div>
                    <div class="row">
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
            </form>
        </div>
        
        <footer class="page-footer teal">
            <div class="container">
                <div class="row">
                    <div class="col m4 s12 center">
                        <h5 class="white-text">MinCIT</h5>
                        <p class="grey-text text-lighten-4">MiCITio Cúcuta se encuentra operando desde el 07 de Octubre de 2015. 
                            Desde su apertura se ha atendido a 134 usuarios entre empresarios, emprendedores y ciudadanos.</p>
                        <img src="/web/img/ufps.png" width="150px" height="150px" alt="UFPS" />
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
                        <img src="/web/img/sistemasufps.png" width="150px" height="150px" alt="UFPS" />
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
        <script src="/web/js/jquery-2.1.1.min.js"></script>
        <script src="/web/js/materialize.min.js"></script>
        <script src="/web/js/init.js"></script>
    </body>
</html>
