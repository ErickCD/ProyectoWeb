<%-- 
    Document   : control_Contacto
    Created on : 4/12/2016, 12:46:04 PM
    Author     : Clair
--%>

<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:useBean class="co.edu.ufps.controlador.Controlador" id="controlador"></jsp:useBean>
<%
    String cto_consecutivo = request.getParameter("cto_consecutivo");
    String tiempo = String.valueOf(request.getParameter("fecha_registroContacto"));
    String cto_asesor = request.getParameter("cto_asesor");
    String cto_nombres = request.getParameter("cto_nombres");
    String cto_apellidos = request.getParameter("cto_apellidos");
    String cto_cc = request.getParameter("cto_cc");
    String cto_genero = request.getParameter("cto_genero");
    String cto_email = request.getParameter("cto_email");
    String cto_email_masivo = request.getParameter("cto_email_masivo");
    String cto_cargo = request.getParameter("cto_cargo");
    String cto_fijo = request.getParameter("cto_fijo");
    String cto_cecular = request.getParameter("cto_cecular");
    String cto_cde = request.getParameter("cto_cde");
    String cto_direccion = request.getParameter("cto_direccion");
    String cto_ciudad = request.getParameter("cto_ciudad");
    String cto_departamento = request.getParameter("cto_departamento");
    String cto_pais = request.getParameter("cto_pais");
    String textarea1 = request.getParameter("textarea1");

    tiempo = "2016-12-05";

    controlador.guardarContacto(cto_consecutivo, tiempo, cto_asesor, cto_nombres, cto_apellidos, cto_cc, cto_cargo,
            cto_cde, cto_direccion, cto_ciudad, cto_pais, cto_cecular, cto_fijo, cto_email, cto_email_masivo,
            cto_genero, cto_departamento, textarea1);

    System.out.println("El tiempo es: " + tiempo + ", nombre: " + cto_nombres + ", apellidos: " + cto_apellidos);
%>
<jsp:include page="registrarContacto.jsp"></jsp:include>
<%
    response.sendRedirect("registrarContacto");
%>    