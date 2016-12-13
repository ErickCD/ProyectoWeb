<%-- 
    Document   : crearEmpresa
    Created on : 19/10/2016, 12:29:06 AM
    Author     : Manuel Florez
--%>

<%@page import="co.edu.ufps.dto.Contacto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="co.edu.ufps.controlador.Controlador" id="controlador" scope="session"></jsp:useBean>
<jsp:useBean class="co.edu.ufps.dto.Usuario" id="usuario" scope="session"></jsp:useBean>
<%
    String emailContacto = request.getParameter("emailContacto");
    Contacto c = controlador.buscarContacto("",emailContacto);
%>

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
                    <a href="dashboard.jsp" class="breadcrumb">Contactos</a>
                    <a href="registrarEmpresa.jsp" class="breadcrumb">Crear empresa</a>
                </div>
            </div>
        </nav>

        <div class="container">
            <form class="" action="" method="post">

                <!-- Titulo del formulario -->
                <div class="control-label">
                    <h5 class="center">Registro de empresas</h5>
                </div>

                <div class="row">

                    <div class="input-field col m6 s12 ">
                        <i class="material-icons prefix">today</i>
                        <input type="date" class="datepicker" value="Fecha">
                    </div>
                    
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
                        <input id="first_name" type="text" class="validate" value="<%=c.getCto_nombres()%>" disabled>
                        <label for="first_name">Nombre (s)</label>
                    </div>
                    <div class="input-field col m6 s12">
                        <input id="last_name" type="text" class="validate" value="<%=c.getCto_apellidos() %>" disabled>
                        <label for="last_name">Apellidos</label>
                    </div>
                    <div class="input-field col m6 s12">
                        <i class="material-icons prefix">class</i>
                        <input id="icon_prefix" type="text" class="validate" value="<%=c.getCto_cargo() %>" disabled>
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
                        <input id="last_name" type="number" class="validate" value="<%=c.getCto_cc() %>" disabled="">
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
                        <input id="nro_cc" type="text" class="validate" value="<%=c.getCto_direccion() %>" disabled="">
                        <label for="last_name">Dirección</label>
                    </div>
                    <div class="input-field col m6 s12">
                        <input id="nro_cc" type="text" class="validate" value="<%=c.getCto_ciudad() %>" disabled="">
                        <label for="last_name">Ciudad</label>
                    </div>
                    <div class="input-field col m6 s12">
                        <input id="nro_cc" type="text" class="validate" value="<%=c.getCto_departamento() %>" disabled="">
                        <label for="last_name">Departamento</label>
                    </div>
                    <div class="input-field col m6 s12">
                        <i class="material-icons prefix">phone</i>
                        <input id="icon_telephone" type="tel" class="validate" value="<%=c.getCto_fijo() %>" disabled="">
                        <label for="icon_telephone">Teléfono</label>
                    </div>
                    <div class="input-field col m6 s12">
                        <i class="material-icons prefix">stay_current_portrait</i>
                        <input id="icon_prefix" type="text" class="validate" value="<%=c.getCto_celular() %>" disabled="">
                        <label for="icon_prefix">Celular</label>
                    </div>

                    <div class="input-field col m6 s12">
                        <div class="input-field">
                            <i class="material-icons prefix" >email</i>
                            <input id="email" type="email" class="validate" value="<%=c.getCto_email() %>" disabled="">
                            <label for="email">Email</label>
                        </div>
                    </div>

                    <div class="col m6 s12">
                        <label for="t1">Genero</label>
                        <input name="genero" type="text" value="<%=c.getCto_genero() %>" disabled="">
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
                </div>

                <br>
                <h5 class="center">Información de la empresa</h5>

                <div class="row">
                    <div class="input-field col m6 s12">
                        <div class="input-field">
                            <input id="email" type="text" class="validate">
                            <label for="email">Nombre de la empresa</label>
                        </div>
                    </div>
                    <div class="input-field col m6 s12">
                        <div class="input-field">
                            <input id="email" type="text" class="validate">
                            <label for="email">NIT</label>
                        </div>
                    </div>
                    <div class="input-field col m6 s12">
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

                    <div class="input-field col m6 s12">
                        <div class="input-field">
                            <input id="email" type="text" class="validate">
                            <label for="email">Nombre del representante legal</label>
                        </div>
                    </div>

                    <input type="submit" value="Guardar">
                </div>
            </form>
        </div>
        <%@include file="plantilla/footer.jsp" %>
        <%@include file="plantilla/scritp.jsp" %>
    </body>
</html>