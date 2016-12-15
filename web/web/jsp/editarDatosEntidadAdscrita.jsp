<%-- 
    Document   : registrarEmpresaAdscrita
    Created on : 23-oct-2016, 18:47:28
    Author     : Manuel Florez
--%>
<%@page import="co.edu.ufps.dto.EmpresaAdscrita"%>
<jsp:useBean class="co.edu.ufps.controlador.Controlador" id="controlador" scope="session"></jsp:useBean>
<jsp:useBean class="co.edu.ufps.dto.Usuario" id="usuario" scope="session"></jsp:useBean>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String nombre_empresa = request.getParameter("nombre_empresa");
    EmpresaAdscrita e = controlador.buscarEmpresaAds(nombre_empresa);
%>
<!DOCTYPE html>
<html>
    <head>
        <title>Editar Entidad Ascrita</title>
        <%@include file="plantilla/style.jsp" %>
    </head>
    <body>

        <nav>
            <div class="nav-wrapper container">
                <div class="col s12">
                    <a href="../index.jsp" class="breadcrumb">MinCIT</a>
                    <a href="dashboard.jsp" class="breadcrumb">Administrador</a>
                    <a href="registrarEmpresaAdscrita.jsp" class="breadcrumb">Registro de Empresa Adscrita</a>
                </div>
            </div>
        </nav>

        <div>
            <p><br><br></p>
        </di>

        <div class="container">
            <form class="" action="proceso/actualizarEmpresaAdscrita.jsp" method="post">
                <div class="row">

                    <h3>Editar Entidad Adscrita <strong>'<%=e.getNombre_empresa()%>'</h3>
                    <br><br>
                    <h5 class="center">Programa de Fortalecimiento Empresarial</h5>
                    <br><br>
                    

                    <div>
                        <input name="nombre_empresa" id="nombre_empresa" type="hidden"  value="<%=e.getNombre_empresa() %>">
                    </div>
                    
                    <div class="input-field col m6 s12">
                        <input name="nombre_gerente" value="<%=e.getNombre_gerente()%>" id="nombre_gerente" type="text" class="validate">
                        <label for="nombre_gerente">Nombre Gerente</label>
                    </div>

                    <div class="input-field col m6 s12">
                        <i class="material-icons prefix" >email</i>
                        <input name="email" id="email" type="email" class="validate" value="<%=e.getEmail()%>">
                        <label for="email">Email</label>
                    </div>

                    <div class="input-field col m6 s12">
                        <i class="material-icons prefix">class</i>
                        <input value="<%=e.getSitio_web()%>" name="sitio_web" id="icon_prefix" type="text" class="validate">
                        <label for="icon_prefix">Página web</label>
                    </div>

                    <div class="input-field col m6 s12">
                        <i class="material-icons prefix">phone</i>
                        <input name="telefono" value="<%=e.getTelefono()%>" id="icon_telephone" type="tel" class="validate">
                        <label for="icon_telephone">Teléfono</label>
                    </div>
                        <br><br><br>
                    <div class="row center">
                        <input class="btn green" type="submit" value="Guardar">
                    </div>

                </div>
            </form>
        </div>

        <%@include file="plantilla/footer.jsp" %>
        <!--  Scripts-->
        <%@include file="plantilla/scritp.jsp" %>
</body>
</html>
