<%-- 
    Document   : paginaDeError
    Created on : 13-dic-2016, 10:40:40
    Author     : Manuel Florez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="plantilla/style.jsp" %>
        <title>Error</title>
    </head>
    <body>
        <nav>
            <div class="nav-wrapper container">
                <div class="col s12">
                    <a href="../index.jsp" class="breadcrumb">MinCIT</a>
                    <a href="login.jsp" class="breadcrumb">Login</a>
                </div>
            </div>
        </nav>
        <br><br><br><br>
        
        <div class="container">
            <div class="header" >
                <h4 class="center-align red-text"> Lo sentimos, a ocurrido un error al procesar<br>
                    por favor vuelva a intentarlo</h4>
            </div>
        </div>
        
        <div class="center-align">
            <a class="waves-effect waves-light btn" href="login.jsp">Intentar</a><br>
        </div>
        <br><br><br>
        
        <%@include file="plantilla/footer.jsp" %>
        <%@include file="plantilla/scritp.jsp" %>
    </body>
</html>
