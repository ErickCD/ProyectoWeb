<%-- 
    Document   : registrarEmpresaAdscrita
    Created on : 23-oct-2016, 18:47:28
    Author     : manue
--%>
<jsp:useBean class="co.edu.ufps.controlador.Controlador" id="controlador" scope="session"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Crear Contacto</title>
        <%@include file="plantilla/style.jsp" %>
    </head>
    <body>

        <nav>
            <div class="nav-wrapper container">
                <div class="col s12">
                    <a href="../index.jsp" class="breadcrumb">MinCIT</a>
                    <a href="dashboard.jsp" class="breadcrumb">Contactos</a>
                    <a href="registrarEmpresaAdscrita.jsp" class="breadcrumb">Registro de Empresa Adscrita</a>
                </div>
            </div>
        </nav>

    <di>
        <p><br><br></p>
    </di>

    <div class="container">
        <form class="" action="proceso/registrarEntidadAdscrita.jsp" method="post">
            <div class="row">

                <h5 class="center">Programa de Fortalecimiento Empresarial</h5>

                <div class="input-field col m6 s12">
                    <input name="nombre_empresa" id="first_name" type="text" class="validate">
                    <label for="first_name">Nombre Empresa</label>
                </div>

                <div class="input-field col m6 s12">
                    <input name="nombre_gerente" id="last_name" type="text" class="validate">
                    <label for="last_name">Nombre Gerente</label>
                </div>

                <div class="input-field col m6 s12">
                    <i class="material-icons prefix" >email</i>
                    <input name="email" id="email" type="email" class="validate">
                    <label for="email">Email</label>
                </div>

                <div class="input-field col m6 s12">
                    <i class="material-icons prefix">class</i>
                    <input name="sitio_web" id="icon_prefix" type="text" class="validate">
                    <label for="icon_prefix">Página web</label>
                </div>

                <div class="input-field col m6 s12">
                    <i class="material-icons prefix">phone</i>
                    <input name="telefono" id="icon_telephone" type="tel" class="validate">
                    <label for="icon_telephone">Teléfono</label>
                </div>

                <div class="row center">
                    <input class="btn green" type="submit" value="Registrar">
                </div>

            </div>
        </form>
    </div>

    <%@include file="plantilla/footer.jsp" %>
    <!--  Scripts-->
    <%@include file="plantilla/scritp.jsp" %>
</body>
</html>
