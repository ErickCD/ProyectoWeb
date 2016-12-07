<%-- 
    Document   : crearEmpresa
    Created on : 19/10/2016, 12:29:06 AM
    Author     : Clair
--%>

<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="co.edu.ufps.controlador.Controlador" id="controlador" scope="session"></jsp:useBean>
<jsp:useBean class="co.edu.ufps.dto.Usuario" id="usuario" scope="session"></jsp:useBean>
    <!DOCTYPE html>
    <html>
        <head>
            <title>Registro de Empresa</title>
        <%@include file="plantilla/style.jsp" %>
    </head>
    <body>

        <nav>
            <div class="nav-wrapper container">
                <div class="col s12">
                    <a href="../index.jsp" class="breadcrumb">MinCIT</a>
                    <a href="../jsp/dashboard.jsp" class="breadcrumb">Dashboard</a>
                    <a href="../jsp/crearEmpresa.jsp" class="breadcrumb">Crear empresa</a>
                </div>
            </div>
        </nav>

        <div class="container col s12">
            <form class="" action="" method="post">

                <!-- Titulo del formulario -->
                <div class="control-label">
                    <h5 class="center">Registro de empresas</h5>
                </div>

                <div class="row">
                    <div class="row">
                        <!-- Se necesita hacer el el metodo que devuelva el último valor de la fila -->
                        <div class="col m4">
                            <label for="emp_consecutivo">Concecutivo</label>
                            <input value="01-000<%=controlador.numeroConsecutivoContacto()%>" id="emp_consecutivo" name="emp_consecutivo" type="text" disabled >
                        </div>

                        <div class="col m4 input-field">
                            <i class="material-icons prefix">today</i>
                            <%
                                Date s = new Date();
                                String fecha = s.getYear() + 1900 + "-" + (s.getMonth() + 1) + "-" + s.toGMTString().substring(0, 1);
                            %>
                            <input id="emp_fecha" name="emp_fecha" type="text" value="<%=fecha%>" disabled required="">
                        </div>

                        <div class="col m4 s12 input-field">
                            <label for="emp_asesor">Asesor</label>
                            <input id="emp_asesor" name="emp_asesor" type="text" class="validate" required>
                        </div>
                    </div>

                    <div class="col s12 m6">
                        <label>Clasificación</label>
                        <select class="browser-default" name="emp_clasCliente" id="emp_clasCliente">
                            <option value="" disabled selected>Escoge la clasificación</option>
                            <option value="Emprendedor">Emprendedor</option>
                            <option value="Empresa formal">Empresa formal</option>
                            <option value="Empresa informal">Empresa informal</option>
                            <option value="Empresa gacela">Empresa gacela</option>
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

                    <div class="row">
                        <div class="input-field col m6 s12">
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
                    </div>

                    <div class="row">
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
                </div>

                <!--Titulo dos, de los datos de la empresa -->
                <br>
                <h5 class="center">Información de la empresa</h5>

                <div class="row">
                    <div class="input-field col m6 s12">
                        <div class="input-field">
                            <input id="emp_nombre" name="emp_nombre" type="text" class="validate">
                            <label for="emp_nombre">Nombre de la empresa</label>
                        </div>
                    </div>
                    <div class="input-field col m6 s12">
                        <div class="input-field">
                            <input id="emp_nit" name="emp_nit" type="number" class="validate">
                            <label for="emp_nit">NIT</label>
                        </div>
                    </div>

                    <div class="row">
                        <div class="input-field col m6 s12">
                            <div class="input-field">
                                <input id="emp_nombreRepLegal"name="emp_nombreRepLegal" type="text" class="validate">
                                <label for="emp_nombreRepLegal">Nombre del representante legal</label>
                            </div>
                        </div>

                        <div class="col m6 s12">
                            <label>Constitución legal</label>
                            <select class="browser-default" id="emp_constitucionLegal" name="emp_constitucionLegal">
                                <option value="SAS">SAS</option>
                                <option value="Limitada">Limitada</option>
                                <option value="Anonima">Anónima</option>
                                <option value="Persona_anonima">Persona anónima</option>
                                <option value="Otros">Otra</option> <!-- Debe de validar la parte de otro tipo de constitucion legal -->
                            </select>
                        </div>
                    </div>

                    <div class="row">
                        <div class="input-field col m6 s12">
                            <i class="material-icons prefix">today</i>
                            <label for="emp_fechaConstitucion">Inicio de labores</label>
                            <br>
                            <input id="emp_fechaConstitucion" name="emp_fechaConstitucion" type="date" class="datepicker">

                        </div>

                        <!--Falta numero de empleados aquí -->
                        <div class="input-field col m6 s12">
                            <div class="input-field">
                                <input id="emp_noEmpleado" name="emp_noEmpleado" type="number" class="validate">
                                <label for="emp_noEmpleado">Número de empleados</label>
                            </div>
                        </div>
                    </div>

                    <div class="input-field col m6 s12">
                        <div class="input-field">
                            <input id="emp_direccion" name="emp_direccion" type="text" class="validate">
                            <label for="emp_direccion">Direccion de la empresa</label>
                        </div>
                    </div>

                    <div class="input-field col m6 s12">
                        <div class="input-field">
                            <input id="emp_ciudad" name="emp_ciudad" type="text" class="validate">
                            <label for="emp_ciudad">Ciudad</label>
                        </div>
                    </div>

                    <div class="input-field col m6 s12">
                        <div class="input-field">
                            <input id="emp_telefono" name="emp_telefono" type="text" pattern="\d{3}[\-]\d{3}[\-]\d{4}" class="validate" placeholder="999-999-9999">
                            <label for="emp_telefono">Telefono</label>
                        </div>
                    </div>

                    <div class="input-field col m6 s12">
                        <div class="input-field">
                            <input id="emp_celular" name="emp_celular" type="text" pattern="\d{3}[\-]\d{3}[\-]\d{4}" class="validate" placeholder="999-999-9999">
                            <label for="emp_celular">Celular</label>
                        </div>
                    </div>

                    <div class="input-field col m6 s12">
                        <div class="input-field">
                            <input id="emp_emailEmpresa" name="emp_emailEmpresa" type="email" class="validate" placeholder="example@example.com">
                            <label for="emp_emailEmpresa">E-mail de la empresa</label>
                        </div>
                    </div>

                    <div class="input-field col m6 s12">
                        <div class="input-field">
                            <input id="emp_urlWebsite" name="emp_urlWebsite" type="url" class="validate" placeholder="http://example.com" required="">
                            <label for="emp_urlWebsite">URL de la página de la empresa</label>
                        </div>
                    </div>

                    <div class="row">
                        <div class="input-field col m6 s12">
                            <label for="emp_tipo">Tipo de empresa</label>
                            <br>
                            <p>
                                <input name="emp_tipo" type="radio" id="emp_tipo1" value="Industria"/>
                                <label for="emp_tipo1">Industria</label>
                            </p>
                            <p>
                                <input name="emp_tipo" type="radio" id="emp_tipo2" value="Turismo"/>
                                <label for="emp_tipo2">Turismo</label>
                            </p>
                        </div>



                        <div class="col m6 s12">
                            <label for="emp_tipoVenta">Tipo de venta</label>
                            <select id="emp_tipoVenta" name="emp_tipoVenta" class="browser-default">
                                <option value="Venta al por mayor">Venta al por mayor</option>
                                <option value="Venta al por menor">Venta al por menor</option>
                                <option value="Servicios">Servicios</option>
                                <option value="Agroindustria">Agroindustria</option>
                                <option value="Otra">Otra</option>
                            </select>
                        </div>

                    </div>

                    <div class="input-field col m6 s12">
                        <label for="emp_registroMercantil">Tiene registro mercantil</label>
                        <br>
                        <p>
                            <input name="emp_registroMercantil" type="radio" id="emp_registroMercantil1" value="Si" />
                            <label for="emp_registroMercantil1">Si</label>
                        </p>
                        <p>
                            <input name="emp_registroMercantil" type="radio" id="emp_registroMercantil2" value="No" />
                            <label for="emp_registroMercantil2">No</label>
                        </p>
                    </div>

                    <div class="input-field col m6 s12">
                        <div class="input-field">
                            <input id="emp_numRegistroMercantil" name="emp_numRegistroMercantil" type="number" class="validate" required="">
                            <label for="emp_numRegistroMercantil">Número de resgistro mercantil</label>
                        </div>
                    </div>

                    <div class="input-field col m6 s12">
                        <i class="material-icons prefix">today</i>
                        <label>Último año de renovación</label>
                        <br>
                        <input id="emp_ultimoAnioRenovacion" name="emp_ultimoAnioRenovacion" type="date" class="datepicker">
                    </div>

                    <div class="row">
                        <div class="input-field col m6 s12">
                            <div class="input-field">
                                <input id="emp_codigoCIIU" name="emp_codigoCIIU" type="text" class="validate" required="">
                                <label for="emp_codigoCIIU">Código CIIU</label>
                            </div>
                        </div>

                        <div class="col m6 s12">
                            <label for="emp_actividadInternacional">Actividad internacional</label>
                            <select id="emp_actividadInternacional" name="emp_actividadInternacional" class="browser-default">
                                <option value="Exportación">Exportación</option>
                                <option value="Importacion">Importación</option>
                                <option value="Ambas">Ambas</option>
                            </select>
                        </div>
                    </div>

                    <div class="row">
                        <div class="row col m6 s12">
                            <label for="emp_paisesComercio">Mencione los paises con los cuales comercializa</label>
                            <select id="emp_paisesComercio" name="emp_paisesComercio" class="browser-default">
                                <option value="Mexico">México</option>
                                <option value="Brasil">Brasil</option>
                                <option value="Argentina">Argentina</option>
                            </select>
                        </div>

                        <div class="input-field col m6 s12">
                            <label for="emp_registroMercantil">Tiene registro mercantil</label>
                            <br>
                            <p>
                                <input name="emp_registroMercantil" type="radio" id="emp_registroMercantil1" value="Si" />
                                <label for="emp_registroMercantil1">Si</label>
                            </p>
                            <p>
                                <input name="emp_registroMercantil" type="radio" id="emp_registroMercantil2" value="No" />
                                <label for="emp_registroMercantil2">No</label>
                            </p>
                        </div>
                    </div>
                </div>
            </form>
        </div>
        <%@include file="plantilla/footer.jsp" %>
        <%@include file="plantilla/scritp.jsp" %>
    </body>
</html>