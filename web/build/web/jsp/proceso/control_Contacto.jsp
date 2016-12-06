<%-- 
    Document   : control_Contacto
    Created on : 4/12/2016, 12:46:04 PM
    Author     : Clair
--%>

<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:useBean class="co.edu.ufps.controlador.Controlador" id="controlador" scope="session"></jsp:useBean>
<jsp:useBean class="co.edu.ufps.dto.Contacto" id="contacto"></jsp:useBean>
<jsp:setProperty property="*" name="contacto"/>

<%
    boolean resultado = controlador.guardarContacto(contacto);

//si es valido el usuario
    if (resultado == true) {
        response.sendRedirect("../registrarContacto.jsp");
    }/*else{
        session.setAttribute("error", res);
        response.sendRedirect("../login.jsp");
     */
%>