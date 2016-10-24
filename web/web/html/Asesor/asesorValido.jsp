<%-- 
    Document   : asesorValido
    Created on : 18-oct-2016, 12:45:37
    Author     : Manuel FLorez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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

            <table class="table table-striped">
                <thead>
                <th>ID</th>
                <th>Nombre</th>
                <th>APELLIDOS</th>
                </thead>
                <tbody>
                    <%
                        for (int i = 0; i < 4; i++) {
                            int var = i + 1;
                    %>
                    <tr>
                        <td> <%= var%> </td>
                        <td>Erick</td>
                        <td>Del Ángel</td>
                    </tr>
                    <%
                        }
                    %>
                </tbody>
            </table>

        </div> <!-- /container -->
        <script src="../js/ie10-viewport-bug-workaround.js"></script>
        <script src="../js/jquery-2.1.1.min.js"></script>
        <script src="../js/materialize.js"></script>
        <script src="../js/init.js"></script>
    </body>
</html>
