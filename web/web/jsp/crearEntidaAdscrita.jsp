<%-- 
    Document   : crearEntidaAdscrita
    Created on : 13-dic-2016, 8:20:43
    Author     : Manuel Florez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="co.edu.ufps.controlador.Controlador" id="controlador" scope="session"></jsp:useBean>
<!DOCTYPE html>
<html>
    <head>
    <%@include file="plantilla/style.jsp" %>
        <title>REGISTRAR ENTIDAD ADSCRITA</title>
    </head>
    <body>
        <nav>
            <div class="nav-wrapper container">
                <div class="col s12">
                    <a href="home.jsp" class="breadcrumb">MinCIT</a>
                    <a href="dashboard.jsp" class="breadcrumb">Administrador</a>
                </div>
            </div>
        </nav>
        
        <%@include file="plantilla/footer.jsp" %>
        <%@include file="plantilla/scritp.jsp" %>
    </body>
</html>
