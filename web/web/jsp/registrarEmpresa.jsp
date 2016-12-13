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
                    <a href="../jsp/registrarEmpresa.jsp" class="breadcrumb">Crear empresa</a>
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
                        <div class="col m4 s12">
                            <label for="emp_consecutivo">Concecutivo</label>
                            <input value="01-000<%=controlador.numeroConsecutivoContacto()%>" id="emp_consecutivo" name="emp_consecutivo" type="text" disabled >
                        </div>

                        <div class="col m4 s12 input-field">
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
                        <input id="cto_nombres" name="cto_nombres" type="text" class="validate">
                        <label for="cto_nombres">Nombre (s)</label>
                    </div>

                    <div class="input-field col m6 s12">
                        <input id="cto_apellidos" name="cto_apellidos" type="text" class="validate">
                        <label for="cto_apellidos">Apellidos</label>
                    </div>
                    <div class="input-field col m6 s12">
                        <i class="material-icons prefix">class</i>
                        <input id="cto_cargo" name="cto_cargo" type="text" class="validate">
                        <label for="cto_cargo">Cargo</label>
                    </div>

                    <div class="row">
                        <div class="input-field col m6 s12">
                            <i class="material-icons prefix">business</i>
                            <label for="cto_antiguedad_cargo">Antigüedad en el cargo</label>
                            <br>
                            <input id="cto_antiguedad_cargo" name="cto_antiguedad_cargo" type="date" class="validate">
                        </div>

                        <div class="input-field col m6 s12">
                            <input id="cto_lugar_nacimiento" name="cto_lugar_nacimiento" type="text" class="validate">
                            <label for="cto_lugar_nacimiento">Lugar de nacimiento</label>
                        </div>
                    </div>

                    <div class="row">
                        <div class="input-field col m6 s12">
                            <i class="material-icons prefix">today</i>
                            <label>Fecha de nacimiento</label>
                            <br>
                            <input id="cto_fecha_nacimiento" name="cto_fecha_nacimiento" type="date" class="datepicker">
                        </div>

                        <div class="input-field col m6 s12">
                            <input id="cto_cc" name="cto_cc" type="number" class="validate">
                            <label for="cto_cc">Número de cedula</label>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col m6 s12">
                            <label>Nivel de estudios</label>
                            <select class="browser-default" id="cto_nivel_estudio" name="cto_nivel_estudio">
                                <option value="Primaria">Primaria</option>
                                <option value="Bachiller">Bachiller</option>
                                <option value="Tecnica">Técnica</option>
                                <option value="Tecnologicas">Tecnológicas</option>
                                <option value="Profesionales">Profesionales</option>
                                <option value="Maestria">Maestria</option>
                                <option value="Doctorado">Doctorado</option>
                            </select>
                        </div>

                        <div class="input-field col m6 s12">
                            <input id="cto_direccion" name="cto_direccion" type="text" class="validate">
                            <label for="cto_direccion">Dirección</label>
                        </div>
                    </div>

                    <div class="row">
                        <div class="input-field col m6 s12">
                            <input id="cto_ciudad" name="cto_ciudad" type="text" class="validate">
                            <label for="cto_ciudad">Ciudad</label>
                        </div>

                        <div class="input-field col m6 s12">
                            <input id="cto_departamento" name="cto_departamento" type="text" class="validate">
                            <label for="cto_departamento">Departamento</label>
                        </div>
                    </div>

                    <div class="row">
                        <div class="input-field col m6 s12">
                            <i class="material-icons prefix">phone</i>
                            <input id="cto_fijo" name="cto_fijo" type="text" pattern="\d{3}[\-]\d{3}[\-]\d{4}" placeholder="999-999-9999" class="validate" required="">
                            <label for="cto_fijo">Teléfono</label>
                        </div>

                        <div class="input-field col m6 s12">
                            <i class="material-icons prefix">stay_current_portrait</i>
                            <input id="cto_celular" name="cto_celular" type="text" pattern="\d{3}[\-]\d{3}[\-]\d{4}" placeholder="999-999-9999" class="validate" required="">
                            <label for="cto_celular">Celular</label>
                        </div>
                    </div>

                    <div class="row">
                        <div class="input-field col m6 s12">
                            <div class="input-field">
                                <i class="material-icons prefix" >email</i>
                                <input id="cto_email" name="cto_email" type="email" class="validate">
                                <label for="cto_email">Email</label>
                            </div>
                        </div>

                        <div class="col m6 s12">
                            <label for="cto_genero">Genero</label>
                            <p>
                                <input name="cto_genero" type="radio" id="cto_genero1" />
                                <label for="cto_genero1">Masculino</label>
                            </p>
                            <p>
                                <input name="cto_genero" type="radio" id="cto_genero2" />
                                <label for="cto_genero2">Femenino</label>
                            </p>
                            <p>
                                <input name="cto_genero" type="radio" id="cto_genero3"  />
                                <label for="cto_genero3">LGBTI</label>
                            </p>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col m6 s12">
                            <label>Grupo ético</label>
                            <select id="cto_etnia" name="cto_etnia" class="browser-default">
                                <option value="Gitanos">Gitanos</option>
                                <option value="Indígenas">Indígenas</option>
                                <option value="Afrocolombianos">Afrocolombianos</option>
                                <option value="Raizales">Raizales</option>
                                <option value="Otros">Otros</option>
                            </select>
                        </div>

                        <div class="col m6 s12">
                            <label for="cto_condicion_desplazado">¿Estas en condiciones de dezplazamiento?</label>
                            <p>
                                <input name="cto_condicion_desplazado" type="radio" id="cto_condicion_desplazado1" value="Si" required/>
                                <label for="cto_condicion_desplazado1">Si</label>
                            </p>
                            <p>
                                <input name="cto_condicion_desplazado" type="radio" id="cto_condicion_desplazado2" value="No" required/>
                                <label for="cto_condicion_desplazado2">No</label>
                            </p>
                        </div>
                    </div>

                    <div class="col m6 s12">
                        <label for="cto_discapacidad">Presenta alguna discapasidad</label>
                        <p>
                            <input name="cto_discapacidad" type="radio" id="cto_discapacidad1" required/>
                            <label for="cto_discapacidad1">Si</label>
                        </p>
                        <p>
                            <input name="cto_discapacidad" type="radio" id="cto_discapacidad2" required/>
                            <label for="cto_discapacidad2">No</label>
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
                                <option value="Otra">Otra</option> <!-- Debe de validar la parte de otro tipo de constitucion legal -->
                            </select>
                        </div>
                    </div>


                    <div class="row">
                        <div class="input-field col m6 s12">
                            <div class="input-field">
                                <input id="emp_otraConstitucion" name="emp_otraConstitucion" type="number" class="validate">
                                <label for="emp_otraConstitucion">Otra constitucion</label>
                            </div>
                        </div>

                        <div class="input-field col m6 s12">
                            <i class="material-icons prefix">today</i>
                            <label for="emp_fechaConstitucion">Inicio de labores</label>
                            <br>
                            <input id="emp_fechaConstitucion" name="emp_fechaConstitucion" type="date" class="datepicker">

                        </div>
                    </div>

                    <div class="row">
                        <div class="input-field col m3 s12">
                            <div class="input-field">
                                <input id="emp_noEmpleadoTC" name="emp_noEmpleadoTC" type="number" class="validate" value="0">
                                <label for="emp_noEmpleadoTC">No. de empleados T.C.</label>
                            </div>
                        </div>
                        <div class="input-field col m3 s12">
                            <div class="input-field">
                                <input id="emp_noEmpleadoMT" name="emp_noEmpleadoMT" type="number" class="validate" value="0">
                                <label for="emp_noEmpleadoMT">No. de empleados M.T.</label>
                            </div>
                        </div>
                        <div class="input-field col m3 s12">
                            <div class="input-field">
                                <input id="emp_noEmpleadoDirectos" name="emp_noEmpleadoDirectos" type="number" class="validate" value="0">
                                <label for="emp_noEmpleadoDirectos">No. de empleados directos</label>
                            </div>
                        </div>
                        <div class="input-field col m3 s12">
                            <div class="input-field">
                                <input id="emp_noEmpleadoIndirectos" name="emp_noEmpleadoIndirectos" type="number" class="validate" value="0">
                                <label for="emp_noEmpleadoIndirectos">No. de empleados indirectos</label>
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
                            <input id="emp_urlWebsite" name="emp_urlWebsite" type="url" class="validate" placeholder="http://example.com" required>
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

                    <div class="row">
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
                    </div>

                    <div class="row">
                        <div class="input-field col m6 s12">
                            <i class="material-icons prefix">today</i>
                            <label for="emp_ultimoAnioRenovacion">Último año de renovación</label>
                            <br>
                            <input id="emp_ultimoAnioRenovacion" name="emp_ultimoAnioRenovacion" type="date" class="datepicker">
                        </div>


                        <div class="input-field col m6 s12">
                            <div class="input-field">
                                <input id="emp_codigoCIIU" name="emp_codigoCIIU" type="text" class="validate" required="">
                                <label for="emp_codigoCIIU">Código CIIU</label>
                            </div>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col m6 s12">
                            <label for="emp_actividadInternacional">Actividad internacional</label>
                            <select id="emp_actividadInternacional" name="emp_actividadInternacional" class="browser-default">
                                <option value="Exportación">Exportación</option>
                                <option value="Importacion">Importación</option>
                                <option value="Ambas">Ambas</option>
                            </select>
                        </div>

                        <div class="row col m6 s12">
                            <label for="emp_paisesComercio">Mencione los paises con los cuales comercializa</label>
                            <select id="emp_paisesComercio" name="emp_paisesComercio" class="browser-default">
                                <option value="Mexico">México</option>
                                <option value="Brasil">Brasil</option>
                                <option value="Argentina">Argentina</option>
                            </select>
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-field col m6 s12">
                            <label for="emp_negocioWeb">Realiza negocios por internet</label>
                            <br>
                            <p>
                                <input name="emp_negocioWeb" type="radio" id="emp_negocioWeb1" value="Si" />
                                <label for="emp_negocioWeb1">Si</label>
                            </p>
                            <p>
                                <input name="emp_negocioWeb" type="radio" id="emp_negocioWeb2" value="No" />
                                <label for="emp_negocioWeb2">No</label>
                            </p>
                        </div>

                        <div class="row col m6 s12">
                            <label for="emp_paisesComercio">Producto o servicio que ofrece la empresa</label>
                            <select id="emp_productoServicio" name="emp_productoServicio" class="browser-default">
                                <option value="Valor1">Valor1</option>
                                <option value="Valor2">Valor2</option>
                                <option value="Valor3">Valor3</option>
                            </select>
                        </div>
                    </div>

                    <div class="row">
                        <div class="row col m6 s12">
                            <label for="emp_medioCDE">Medio CDE</label>
                            <select id="emp_medioCDE" name="emp_medioCDE" class="browser-default">
                                <option value="Valor1">Valor1</option>
                                <option value="Valor2">Valor2</option>
                                <option value="Valor3">Valor3</option>
                            </select>
                        </div>

                        <div class="col m6 s12 input-field">
                            <div class="row">
                                <div class="input-field col s12">
                                    <i class="material-icons prefix">note_add</i>
                                    <textarea id="emp_observaciones" name="emp_observaciones" class="materialize-textarea" maxlength="150"></textarea>
                                    <label for="emp_observaciones">Notas:</label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row center">
                    <button class="btn btn-lg btn-primary btn-block" type="submit">Guardar empresa</button>
                </div>

            </form>

        </div>

        <%@include file="plantilla/footer.jsp" %>
        <%@include file="plantilla/scritp.jsp" %>
    </body>
</html>