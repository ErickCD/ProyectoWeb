<%-- 
    Document   : addLogro
    Created on : 15-dic-2016, 17:06:42
    Author     : Manuel Florez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="co.edu.ufps.controlador.Controlador" id="controlador" scope="session"></jsp:useBean>
<jsp:useBean class="co.edu.ufps.dto.Usuario" id="usuario" scope="session"></jsp:useBean>
<%
    controlador.addLogro(request.getParameter("logro"));
%>
