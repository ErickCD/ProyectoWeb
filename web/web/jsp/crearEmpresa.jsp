<%-- 
    Document   : crearEmpresa
    Created on : 19/10/2016, 12:29:06 AM
    Author     : Clair
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta name="viewport" content="width=file:///C:/Users/manue/Google%20Drive/Semestre%202%20-%202016/Programaci%C3%B3n%20Web/Proyecto%20del%20Semestre/vistas/index.htmldevice-width, initial-scale=1, maximum-scale=1.0, user-scalable=no"/>
        <title>Registro de Empresa</title>
        <!-- CSS  -->
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link href="css/materialize.css" type="text/css" rel="stylesheet" media="screen,projection"/>
        <link href="css/style.css" type="text/css" rel="stylesheet" media="screen,projection"/>

        <link href="css/prism.css" rel="stylesheet">
        <link href="css/ghpages-materialize.css" type="text/css" rel="stylesheet" media="screen,projection">
        <link href="http://fonts.googleapis.com/css?family=Inconsolata" rel="stylesheet" type="text/css">
    </head>
    

        <nav class="white" role="navigation">
            <div class="nav-wrapper container">
                <a id="logo-container" href="index.jsp" class="brand-logo">
                    <img src="img/a.png" alt="logo" />
                </a>
                <ul class="right hide-on-med-and-down">
                    <li><a href="index.jsp">Salir</a></li>
                </ul>

                <ul id="nav-mobile" class="side-nav">
                    <li><a href="index.jsp">Salir</a></li>
                </ul>
                <a href="#" data-activates="nav-mobile" class="button-collapse"><i class="material-icons">menu</i></a>
            </div>
        </nav>

        <div class="container">
            <form class="" action="" method="post">
                
                    <h5 class="center">Registro de Clientes</h5>
                    <i class="material-icons prefix">today</i>
                    <input type="date" class="datepicker" value="Fecha">

                    <div class="row">
                        <div class="col m6 s12">
                            <label>Clasificación</label>
                            <select class="browser-default">
                                <option value="" disabled selected>Escoge la clasificación</option>
                                <option value="1">Emprendedor</option>
                                <option value="2">Empresa formal</option>
                                <option value="3">Empresa informal</option>
                                <option value="4">Empresa gacela</option>
                            </select>
                        </div>
                        <div class="input-field col m6 s12">
                            <input id="first_name" type="text" class="validate">
                            <label for="first_name">Nombre (s)</label>
                        </div>
                        <div class="input-field col m6 s12">
                            <input id="last_name" type="text" class="validate">
                            <label for="last_name">Apellidos</label>
                        </div>
                        <div class="input-field col m6 s12">
                            <i class="material-icons prefix">class</i>
                            <input id="icon_prefix" type="text" class="validate">
                            <label for="icon_prefix">Cargo</label>
                        </div>
                        <div class="input-field col m6 s12">
                            <i class="material-icons prefix">business</i>
                            <input id="icon_prefix" type="text" class="validate">
                            <label for="icon_prefix">Antigüedad en el cargo</label>
                        </div>
                        <div class="input-field col m6 s12">
                            <input id="icon_prefix" type="text" class="validate">
                            <label for="icon_prefix">Lugar de nacimiento</label>
                        </div>
                        <div class="input-field col m6 s12">
                            <i class="material-icons prefix">today</i>
                            <input type="date" class="datepicker" value="Fecha de nacimiento">
                        </div>
                        <div class="input-field col m6 s12">
                            <input id="last_name" type="number" class="validate">
                            <label for="last_name">NRO. C.C:</label>
                        </div>
                        <div class="col m6 s12">
                            <label>Nivel de estudios</label>
                            <select class="browser-default">
                                <option value="1">Primaria</option>
                                <option value="2">Bachiller</option>
                                <option value="3">Técnica</option>
                                <option value="3">Tecnológicas</option>
                                <option value="3">Profesionales</option>
                                <option value="3">Maestria</option>
                                <option value="3">Doctorado</option>
                            </select>
                        </div>

                    </div>
                    <div class="input-field col m6 s12">
                        <input id="nro_cc" type="text" class="validate">
                        <label for="last_name">Dirección</label>
                    </div>
                    <div class="input-field col m6 s12">
                        <input id="nro_cc" type="text" class="validate">
                        <label for="last_name">Ciudad</label>
                    </div>
                    <div class="input-field col m6 s12">
                        <input id="nro_cc" type="text" class="validate">
                        <label for="last_name">Departamento</label>
                    </div>
                    <div class="input-field col m6 s12">
                        <i class="material-icons prefix">phone</i>
                        <input id="icon_telephone" type="tel" class="validate">
                        <label for="icon_telephone">Teléfono</label>
                    </div>
                    <div class="input-field col m6 s12">
                        <i class="material-icons prefix">stay_current_portrait</i>
                        <input id="icon_prefix" type="text" class="validate">
                        <label for="icon_prefix">Celular</label>
                    </div>
                    <div class="col m6 s12">
                        <div class="input-field">
                            <i class="material-icons prefix" >email</i>
                            <input id="email" type="email" class="validate">
                            <label for="email">Email</label>
                        </div>
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
                            <input class="with-gap" name="group1" type="radio" id="test3"  />
                            <label for="test3">LGBTI</label>
                        </p>
                    </div>
                    <div class="col m6 s12">
                        <label>Grupo ético</label>
                        <select class="browser-default">
                            <option value="1">Gitanos</option>
                            <option value="2">Indígenas</option>
                            <option value="3">Afrocolombianos</option>
                            <option value="3">Raizales</option>
                            <option value="3">Otros</option>
                        </select>
                    </div>
                    <div class="col m6 s12">
                        <label for="t1">Estas en condiciones de dezplazamiento</label>
                        <p>
                            <input name="group1" type="radio" id="test1" />
                            <label for="test1">Si</label>
                        </p>
                        <p>
                            <input name="group1" type="radio" id="test2" />
                            <label for="test2">No</label>
                        </p>
                    </div>
                    <div class="col m6 s12">
                        <label for="t1">Presenta alguna discapasidad</label>
                        <p>
                            <input name="group1" type="radio" id="test1" />
                            <label for="test1">Si</label>
                        </p>
                        <p>
                            <input name="group1" type="radio" id="test2" />
                            <label for="test2">No</label>
                        </p>
                    </div>
                    <br>
                    <h5 class="center">Información de la empresa</h5>
                    <div class="col m6 s12">
                        <div class="input-field">
                            <input id="email" type="text" class="validate">
                            <label for="email">Nombre de la empresa</label>
                        </div>
                    </div>
                    <div class="col m6 s12">
                        <div class="input-field">
                            <input id="email" type="text" class="validate">
                            <label for="email">NIT</label>
                        </div>
                    </div>
                    <div class="col m6 s12">
                        <div class="input-field">
                            <input id="email" type="text" class="validate">
                            <label for="email">Nombre del representante legal</label>
                        </div>
                    </div>
                    <div class="col m6 s12">
                        <label>Constitución legal</label>
                        <select class="browser-default">
                            <option value="1">SAS</option>
                            <option value="2">Limitada</option>
                            <option value="3">Anónima</option>
                            <option value="3">Persona anónima</option>
                            <option value="3">Otra</option>
                        </select>
                    </div>
                    <div class="input-field col m6 s12">
                        <i class="material-icons prefix">today</i>
                        <input type="date" class="datepicker" value="Inicio de labores">
                    </div>
                    <!--Falta numero de empleados aquí -->

                    <div class="col m6 s12">
                        <div class="input-field">
                            <input id="email" type="text" class="validate">
                            <label for="email">Nombre del representante legal</label>
                        </div>
                    </div>


                
            </form>
        </div>


        <!--  Scripts-->
        <script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
        <script src="js/materialize.js"></script>
        <script src="js/init.js"></script>
    
</html>
