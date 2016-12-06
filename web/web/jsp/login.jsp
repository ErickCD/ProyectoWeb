<%-- 
    Document   : login
    Created on : 25-nov-2016, 23:10:28
    Author     : Manuel Florez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="co.edu.ufps.dto.Usuario" id="usuario" scope="session"></jsp:useBean>
    <html>
        <head>
            <title>Login ppp</title>
        <%@include file="plantilla/style.jsp" %>
    </head>
    <body>
        <nav>
            <div class="nav-wrapper container">
                <div class="col s12">
                    <a href="home.jsp" class="breadcrumb">MinCIT</a>
                    <a href="login.jsp" class="breadcrumb">Ingresar</a>
                </div>
            </div>
        </nav>
        <% String error =(String) session.getAttribute("error");
            if(error==null) error = "";
        %>
        <div class="container center-align"><%=error%></div>

        <div class="container">
            <%-- cuadro simple de login --%>
            <br>
            <div class="row">
                <div class="col m3 s12"><br></div>
                <div class="col m6 s12 center-align z-depth-5"><br>
                    <form name="formulario1" action="proceso/validarUsuario.jsp" method="POST">
                        <h2>Login</h2>
                        <div class="input-field container">
                            <input name="nombre" id="email" type="text" class="validate center-align" required="">
                            <label for="nombre">Nombre</label>
                        </div>
                        <div class="input-field container">
                            <input name="password" id="password" type="password" class="validate center-align" required="">
                            <label for="password">Password</label>
                        </div>
                        <%--
                        <div class="input-field container">
                            <select name="user" id="user">
                                <option value="asesor" selected="">Asesor</option>
                                <option value="empresa">Empresa</option>
                                <option value="administrador">Administrador</option>
                            </select>
                            <label>Tipo De Usuario</label>
                        </div>
                        --%>
                        <input class="btn" type="submit" value="Ingresar"><br><br>
                    </form>


                </div>
                <div class="col m3 s12"></div>
            </div>
            <%-- cuadro simple de login --%>
        </div>

            <%--
        <!-- Modal Trigger -->
        <a class="waves-effect waves-light btn" href="#modal1">Modal</a>

        <!-- Modal Structure -->
        <div id="modal1" class="modal">
            <div class="modal-content">
                <h4>Información</h4>
                <p id="mensaje"></p>
            </div>
            <div class="modal-footer">
                <a href="dashboard.jsp" class="modal-action modal-close waves-effect waves-green btn-flat ">Ingresar</a>
            </div>
        </div>
        
        --%>
        
        <%@include file="plantilla/footer.jsp" %>
        <%@include file="plantilla/scritp.jsp" %>
        <%-- código para activar el select del formulario --%>
        <script>
            $(document).ready(function () {
                $('select').material_select();
                $('.modal').modal();
            });

            function validarUsuario() {
                // llamada al metodo de Ajax
                $.ajax({
                    // La URL de la petición
                    url: "proceso/validarUsuario.jsp",
                    // la información a enviar
                    data: {
                        email: $("#email").val(),
                        password: $("#password").val(),
                        user: $("#user").val()
                    },
                    // especifica si será una petición POST o GET
                    type: 'POST',
                    // el tipo de información que se espera de respuesta
                    dataType: 'html',
                    // código a ejecutar si la petición es satisfactoria;
                    // la respuesta es pasada como argumento a la función
                    success: function (respuesta) {
                        $("#mensaje").html(respuesta);
                        $('.modal').modal('open');
                        //dashboard();
                    },
                    // código a ejecutar si la petición falla;
                    // son pasados como argumentos a la función
                    // el objeto de la petición en crudo y código de estatus de la petición
                    error: function (xhr, status) {
                        alert('Disculpe, existió un problema');
                    },

                    // código a ejecutar sin importar si la petición falló o no
                    complete: function (xhr, status) {
                        //alert('Petición realizada');
                    }
                });

            }
        </script>
    </body>
</html>
