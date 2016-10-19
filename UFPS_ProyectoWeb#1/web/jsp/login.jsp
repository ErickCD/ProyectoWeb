<%-- 
    Document   : login
    Created on : 18-oct-2016, 11:19:12
    Author     : Manuel Florez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->


        <title>Ingresar</title>
        <link href="../css/signin.css" rel="stylesheet">
        <link href="../css/ie10-viewport-bug-workaround.css" rel="stylesheet">
        <link href="../css/bootstrap.min.css" rel="stylesheet">

    </head>
    <body>

        <nav class="navbar navbar-inverse navbar-fixed-top">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="../index.jsp">Página principal</a>
                </div>
            </div>
        </nav>

        <div class="container">

            <form class="form-signin" action="asesor.jsp" method="POST">
                <%
                    String error = (String) session.getAttribute("error");
                    if(error!=null){
                %>
                <div class="alert alert-danger" role="alert">
                    <strong>:(</strong> <%= error %>
                </div>
                <%
                    }
                %>
                <h2 class="form-signin-heading">Por favor ingrese...</h2>
                <label for="inputEmail" class="sr-only">Dirección de e-mail</label>
                <input type="email" name="user" id="inputEmail" class="form-control" placeholder="Dirección de e-mail" required autofocus>
                <label for="inputPassword" class="sr-only">Password</label>
                <input type="password" name="password" id="inputPassword" class="form-control" placeholder="Contraseña" required>
                <div class="checkbox">
                    <label>
                        <input type="checkbox" value="remember-me"> Recuerdame
                    </label>
                </div>
                <!-- EL onClick es temporal -->
                <button class="btn btn-lg btn-primary btn-block" type="submit">Ingresar</button>

            </form>

        </div> <!-- /container -->
        <script src="../js/ie10-viewport-bug-workaround.js"></script>
        <script src="../js/jquery-2.1.1.min.js"></script>
        <script src="../js/materialize.js"></script>
        <script src="../js/init.js"></script>
    </body>
</html>