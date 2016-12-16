<%-- 
    Document   : actualizarContacto
    Created on : 14-dic-2016, 13:00:09
    Author     : manue
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="co.edu.ufps.controlador.Controlador" id="controlador" scope="session"></jsp:useBean>
<jsp:useBean class="co.edu.ufps.dto.Contacto" id="contacto"></jsp:useBean>
<jsp:setProperty property="*" name="contacto"/>
<%
    boolean resultado = controlador.actualizarContacto(contacto);
    
    System.out.println("pais "+contacto.getCto_pais()+"***********************************************");
    
//si es valido el usuario
    if (resultado) {
        response.sendRedirect("../dashboard.jsp");
    } else {
        response.sendRedirect("../paginaDeError.jsp");
    }
%>
