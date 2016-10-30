<%-- 
    Document   : asesor
    Created on : 18-oct-2016, 11:23:20
    Author     : manue
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="co.edu.ufps.controlador.Controlador" id="controlador"></jsp:useBean>    
<%
    String user = request.getParameter("user");
    String password = request.getParameter("password");
    String login = controlador.validarAsesor(user, password);//devuelve null si es valido

    session.invalidate();
    session = request.getSession();
    if (login == null) {

%>
<jsp:include page="../jsp/dashboard.jsp"></jsp:include>
<%    } else {
        session.setAttribute("error", login);
        response.sendRedirect("../jsp/login.jsp");
    }
%>


