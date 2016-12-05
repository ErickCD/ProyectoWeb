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
        <link href="../css/materialize.min.css" type="text/css" rel="stylesheet" media="screen,projection"/>
        <link href="../css/style.css" type="text/css" rel="stylesheet" media="screen,projection"/>
    </head>
    <body>

        <nav>
            <div class="nav-wrapper container">
                <div class="col s12">
                    <a href="../index.jsp" class="breadcrumb">MinCIT</a>
                    <a href="../jsp/dashboard.jsp" class="breadcrumb">Contactos</a>
                    <a href="../jsp/registrarContacto.jsp" class="breadcrumb">Registro de Contacto</a>
                </div>
            </div>
        </nav>

        <div class="container">
            <form class="" action="control_Contacto.jsp" method="POST">
                <div class="row">

                    <h5 class="center">Programa de Fortalecimiento Empresarial</h5>

                    <div class="col S12">
                        <div class="col m4 input-field">
                            <label for="cto_consecutivo">Número consecutivo</label>
                            <input id="cto_consecutivo" name="cto_consecutivo" type="number" class="validate">
                        </div>

                        <div class="col m4 input-field">
                            <i class="material-icons prefix">today</i>
                            <input name="fecha_registroContacto" id="fecha_registroContacto" type="date" step="7" value="Fecha">
                        </div>

                        <div class="col m4 input-field">
                            <label for="cto_asesor">Asesor</label>
                            <input id="cto_asesor" name="cto_asesor" type="text" class="validate">
                        </div>

                        <div class="col m4 input-field">
                            <label for="cto_nombres">Nombres</label>
                            <input id="cto_nombres" name="cto_nombres" type="text" class="validate">
                        </div>

                        <div class="col m4 input-field">
                            <input id="cto_apellidos" name="cto_apellidos" type="text" class="validate">
                            <label for="cto_apellidos" >Apellidos</label>
                        </div>

                        <div class="col m4 input-field">
                            <input id="cto_cc" name="cto_cc" type="number" class="validate">
                            <label for="cto_cc">Nro CC.</label>
                        </div>

                        <div class="col m4">
                            <label>Género</label>
                            <select id="cto_genero" name="cto_genero" class="browser-default">
                                <option value="1">Masculino</option>
                                <option value="2">Femenino</option>
                                <option value="3">LGBTI</option>
                            </select>
                        </div>

                        <div class="col m4 input-field">
                            <i class="material-icons prefix" >email</i>
                            <input id="cto_email" name="cto_email" type="email" class="validate">
                            <label for="cto_email">Email</label>
                        </div>

                        <div class="col m4 input-field">
                            <div id="cto_email_masivo">
                                <label for="cto_email_masivo_t1">¿Desea resibir correo electronico maxivo?</label>
                                <p>
                                    <input name="cto_email_masivo" type="radio" id="cto_email_masivo_t1" />
                                    <label for="cto_email_masivo_t1">Si</label>
                                </p>
                                <p>
                                    <input name="cto_email_masivo" type="radio" id="cto_email_masivo_t2" />
                                    <label for="cto_email_masivo_t2">No</label>
                                </p>
                            </div>
                        </div>

                        <div class="col m4 input-field">
                            <i class="material-icons prefix">class</i>
                            <input id="cto_cargo" name="cto_cargo" type="text" class="validate">
                            <label for="cto_cargo" >Cargo</label>
                        </div>

                        <div class="col m4 input-field">
                            <i class="material-icons prefix">phone</i>
                            <input id="cto_fijo" name="cto_fijo" type="tel" pattern="\d{3}[\-]\d{3}[\-]\d{4}" class="validate">
                            <label for="cto_fijo">999-999-9999</label>
                        </div>

                        <div class="col m4 input-field">
                            <i class="material-icons prefix">stay_current_portrait</i>
                            <input id="cto_cecular" name="cto_cecular" type="tel" pattern="\d{3}[\-]\d{3}[\-]\d{4}" class="validate">
                            <label for="cto_cecular">Celular</label>
                        </div>

                        <div class="col m4 input-field">
                            <i class="material-icons prefix">payment</i>
                            <input id="cto_cde" name="cto_cde" type="tel" class="validate">
                            <label for="cto_cde">CDE</label>
                        </div>

                        <div class="col m4 input-field">
                            <input id="cto_direccion" name="cto_direccion" type="text" class="validate">
                            <label for="cto_direccion">Dirección</label>
                        </div>

                        <div class="col m4 input-field">
                            <input id="cto_ciudad" name="cto_ciudad" type="text" class="validate">
                            <label for="cto_ciudad">Ciudad</label>
                        </div>

                        <div class="col m4 input-field">
                            <input id="cto_departamento" name="cto_departamento" type="text" class="validate">
                            <label for="cto_departamento">Deparamento</label>
                        </div>

                        <div class="col m4 input-field">
                            <input id="cto_pais" name="cto_pais" type="text" class="validate">
                            <label for="cto_pais">País</label>
                        </div>

                        <div class="col m8 input-field">
                            <div class="row">
                                <div class="input-field col s12">
                                    <i class="material-icons prefix">note_add</i>
                                    <textarea id="textarea1" name="textarea1" class="materialize-textarea" maxlength="150"></textarea>
                                    <label for="textarea1">Notas:</label>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row center">
                        <button class="btn btn-lg btn-primary btn-block" type="submit">Guardar contacto</button>
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
