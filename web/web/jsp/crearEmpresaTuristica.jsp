<%-- 
    Document   : crearEmpresaTuristica
    Created on : 19/10/2016, 12:29:43 AM
    Author     : Clair
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="viewport" content="width=file:///C:/Users/manue/Google%20Drive/Semestre%202%20-%202016/Programaci%C3%B3n%20Web/Proyecto%20del%20Semestre/vistas/index.htmldevice-width, initial-scale=1, maximum-scale=1.0, user-scalable=no"/>
        <title>Empresa Turistica</title>

        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link href="css/materialize.css" type="text/css" rel="stylesheet" media="screen,projection"/>
        <link href="css/style.css" type="text/css" rel="stylesheet" media="screen,projection"/>
    </head>
    <body>
        <nav class="white" role="navigation">
            <div class="nav-wrapper container">
                <a id="logo-container" href="index.html" class="brand-logo">
                    <img src="img/a.png" alt="logo" />
                </a>
                <ul class="right hide-on-med-and-down">
                    <li><a href="index.html">Salir</a></li>
                </ul>

                <ul id="nav-mobile" class="side-nav">
                    <li><a href="index.html">Salir</a></li>
                </ul>
                <a href="#" data-activates="nav-mobile" class="button-collapse"><i class="material-icons">menu</i></a>
            </div>
        </nav>

        <div class="container">
            <form class="" action="" method="post">
                <div class="row">

                    <div class="center">
                        <h5>Registro de cliente / empresa  turistica</h5>
                    </div>

                    <div class="container col m6 s12">
                        <i class="material-icons prefix">today</i>
                        <input type="date" class="datepicker" value="Fecha">
                    </div>


                    <div class="col m6 s12">
                        <label>Clasificación</label>
                        <select class="browser-default">
                            <option value="1">Emprendedor</option>
                            <option value="2">Empresa formal</option>
                            <option value="3">Empresa informal</option>
                            <option value="3">Empresa gacela</option>
                        </select>
                    </div>

                    <!-- Primer suptitulo para la diferenciación de la página -->

                    <div class="row">
                        <div>
                            <ul class="collection with-header col m12 s12 center">
                                <li class="collection-header"><h5>Datos del contato</h5></li>
                            </ul>
                        </div>

                        <div class="input-field col m6 s12">
                            <input id="nombre" type="text" class="validate">
                            <label for="first_name">Nombre (s)</label>
                        </div>

                        <div class="input-field col m6 s12">
                            <input id="last_name" type="text" class="validate">
                            <label for="apellido">Apellidos</label>
                        </div>

                        <div class="input-field col m6 s12">
                            <input id="last_name" type="text" class="validate">
                            <label for="nro_cc">NRO. C.C:</label>
                        </div>

                        <div class="input-field col m6 s12">
                            <i class="material-icons prefix">class</i>
                            <input id="last_name" type="text" class="validate">
                            <label for="cargo">Cargo</label>
                        </div>

                        <div class="input-field col m6 s12">
                            <input id="antiguedad_cargo" type="text" class="validate">
                            <label for="last_name">Antigüedad en el cargo</label>
                        </div>

                        <div id="lugar_nacimiento" class="col m6 s12">
                            <label>Lugar de nacimiento</label>
                            <select class="browser-default">
                                <option value="" disabled selected>Escoge una ciudad</option>
                                <option value="1">Ciudad 1</option>
                                <option value="2">Ciudad 2</option>
                                <option value="3">Ciudad 3</option>
                            </select>
                        </div>

                        <div class="col m6 s12">
                            <i class="material-icons prefix">today</i>
                            <input id="fecha_nacimiento" type="date" class="datepicker" value="Fecha de nacimiento">
                        </div>

                        <div class="input-field col m6 s12">
                            <input id="last_name" type="text" class="validate">
                            <label for="nro_cedula">Nro. de Cédula:</label>
                        </div>

                        <div id="nivel_estudios" class="col m6 s12">
                            <label>Nivel de estudios</label>
                            <select class="browser-default">
                                <option value="" disabled selected>Escolaridad</option>
                                <option value="1">Primaria</option>
                                <option value="2">Bachiller</option>
                                <option value="3">Técnica</option>
                                <option value="4">Profecional</option>
                                <option value="5">Posgrado</option>
                                <option value="6">Otros</option>
                            </select>
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
                            <label for="inputEmail" class="sr-only">Dirección de e-mail</label>
                            <input type="email" id="inputEmail" class="form-control" placeholder="Dirección de e-mail" required autofocus>
                        </div>

                        <div class="col m6 s12">
                            <label for="t1">Genero</label>
                            <p>
                                <input name="group1" type="radio" id="test1" />
                                <label for="test1">Masculino</label>
                            </p>
                            <p>
                                <input name="group1" type="radio" id="test2" />
                                <label for="test2">Femenino</label>
                            </p>
                            <p>
                                <input name="group1" type="radio" id="test3"  />
                                <label for="test3">LGBTI</label>
                            </p>
                        </div>

                        <div class="col m6 s12">
                            <label>Grupo étnico</label>
                            <select class="browser-default">
                                <option value="1">Rrom (gitanos)</option>
                                <option value="2">Indígenas</option>
                                <option value="3">Afrocolombianos</option>
                                <option value="4">Raizales</option>
                                <option value="6">Otros</option>
                            </select>
                        </div>

                        <div class="col m6 s12">
                            <label for="t4">¿Está en condición de desplazamiento?</label>
                            <p>
                                <input name="group2" type="radio" id="test4" />
                                <label for="test4">Si</label>
                            </p>
                            <p>
                                <input name="group2" type="radio" id="test5" />
                                <label for="test5">No</label>
                            </p>
                        </div>

                        <div class="col m6 s12">
                            <label for="t6">¿presenta algúna discapacidad?</label>
                            <p>
                                <input name="group3" type="radio" id="test6" />
                                <label for="test6">Si</label>
                            </p>
                            <p>
                                <input name="group3" type="radio" id="test7" />
                                <label for="test7">No</label>
                            </p>
                        </div>
                    </div>

                    <!-- Segundo suptitulo para la diferenciación de la página -->

                    <div>
                        <ul class="collection with-header col m12 s12 center">
                            <li class="collection-header"><h5>Información de la empresa</h5></li>
                        </ul>
                    </div>

                    <div class="input-field col m6 s12">
                        <input id="nombre_empresa" type="text" class="validate">
                        <label for="first_name">Nombre de la empresa:</label>
                    </div>

                    <div class="input-field col m6 s12">
                        <input id="nit" type="text" class="validate">
                        <label for="first_name">NIT:</label>
                    </div>

                    <div class="input-field col m6 s12">
                        <input id="nombre_representante_legal" type="text" class="validate">
                        <label for="first_name">Nombre del representante legal:</label>
                    </div>

                    <div class="col m6 s12">
                        <label>Constitución legal</label>
                        <select class="browser-default">
                            <option value="" disabled selected>Constitución</option>
                            <option value="1">SAS</option>
                            <option value="2">Ltda</option>
                            <option value="3">S. anónima</option>
                            <option value="4">Persona Natural</option>
                            <option value="6">Otras</option>
                        </select>
                    </div>

                    <div class="container col m6 s12">
                        <i class="material-icons prefix">today</i>
                        <input type="date" class="datepicker" value="Fecha de constitución">
                    </div>

                    <!-- No esta acabado aún-->

                    <div class="input-field col m6 s12">
                        <input id="no_empleados" type="number" class="validate">
                        <label for="last_name">No de empleados:</label>
                    </div>

                    <div class="input-field col m6 s12">
                        <input id="direccion_empresa" type="text" class="validate">
                        <label for="last_name">Dirección de la empresa:</label>
                    </div>

                    <div class="input-field col m6 s12">
                        <i class="material-icons prefix">phone</i>
                        <input id="last_name" type="number" class="validate">
                        <label for="last_name">Teléfono_fijo:</label>
                    </div>

                    <div class="input-field col m6 s12">
                        <i class="material-icons prefix">stay_current_portrait</i>
                        <input id="last_name" type="number" class="validate">
                        <label for="last_name">Teléfono celular:</label>
                    </div>

                    <div class="input-field col m6 s12">
                        <label for="inputEmail" class="sr-only">Dirección de e-mail</label>
                        <input type="email" id="inputEmail" class="form-control" placeholder="Dirección de e-mail" required autofocus>
                    </div>

                    <div class="input-field col m6 s12">
                        <input id="sitioWeb" type="text" class="validate">
                        <label for="sitioWeb">Sitios Web:</label>
                    </div>

                    <div class="col m6 s12">
                        <form class="col s12">
                            <div class="row">
                                <div class="input-field col s12">
                                    <i class="material-icons prefix">note_add</i>
                                    <textarea id="textarea1" class="materialize-textarea"></textarea>
                                    <label for="textarea1">Descripsión del servicio que ofrese:</label>
                                </div>
                            </div>
                        </form>
                    </div>

                    <div class="col m6 s12">
                        <label for="t5">¿Tiene registro mercantíl?</label>
                        <p>
                            <input name="group4" type="radio" id="test8" />
                            <label for="test8">Si</label>
                        </p>
                        <p>
                            <input name="group4" type="radio" id="test9" />
                            <label for="test9">No</label>
                        </p>
                    </div>

                    <div class="input-field col m6 s12">
                        <input id="numRegistroMercantil" type="number" class="validate">
                        <label for="numRegistroMercantil">Nro de registro mercantil:</label>
                    </div>

                    <div class="input-field col m6 s12">
                        <input id="ultimoAnioRenovacion" type="number" class="validate">
                        <label for="ultimoAnioRenovacion">¿Último año de renovación?</label>
                    </div>

                    <!-- Tercero suptitulo para la diferenciación de la página -->

                    <div>
                        <ul class="collection with-header col m12 s12 center">
                            <li class="collection-header"><h5>Información de la empresa turistica</h5></li>
                        </ul>
                    </div>

                    <div class="col m6 s12">
                        <label for="t6">¿Tiene seguro de viaje?</label>
                        <p>
                            <input name="group5" type="radio" id="test10" />
                            <label for="test10">Si</label>
                        </p>
                        <p>
                            <input name="group5" type="radio" id="test11" />
                            <label for="test11">No</label>
                        </p>
                    </div>

                    <div class="input-field col m6 s12">
                        <input id="ultimoAnioRenovacion" type="text" class="validate">
                        <label for="ultimoAnioRenovacion">¿Cuál?</label>
                    </div>

                    <div class="col m6 s12">
                        <label for="t7">Registro nacional de turismo:</label>
                        <p>
                            <input name="group6" type="radio" id="test12" />
                            <label for="test12">Si</label>
                        </p>
                        <p>
                            <input name="group6" type="radio" id="test13" />
                            <label for="test13">No</label>
                        </p>
                    </div>

                    <div class="col m6 s12">
                        <label for="t6">¿Maneja algún tipo de póliza  ?</label>
                        <p>
                            <input name="group5" type="radio" id="test10" />
                            <label for="test10">Si</label>
                        </p>
                        <p>
                            <input name="group5" type="radio" id="test11" />
                            <label for="test11">No</label>
                        </p>
                    </div>

                    <!-- Cuarto suptitulo para la diferenciación de la página -->

                    <div>
                        <ul class="collection with-header col m12 s12 center">
                            <li class="collection-header"><h5>Tipo de empresa turística</h5></li>
                        </ul>
                    </div>

                    <!-- Quinto suptitulo para la diferenciación de la página -->

                    <div>
                        <ul class="collection with-header col m12 s12 center">
                            <li class="collection-header"><h5>Tipo de alojamiento</h5></li>
                        </ul>
                    </div>

                    <!-- Sexto suptitulo para la diferenciación de la página -->

                    <div>
                        <ul class="collection with-header col m12 s12 center">
                            <li class="collection-header"><h5>Tipo de turismo que desarrolla</h5></li>
                        </ul>
                    </div>

                </div>
            </form>
        </div>


        <!--  Scripts-->
        <script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
        <script src="js/materialize.js"></script>
        <script src="js/init.js"></script>
    </body>
</html>
