<%-- 
    Document   : asignarLogro_Servicio
    Created on : 15-dic-2016, 18:45:13
    Author     : manue
--%>

<%@page import="co.edu.ufps.dto.EmpresaAdscrita"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="co.edu.ufps.controlador.Controlador" id="controlador" scope="session"></jsp:useBean>
<jsp:useBean class="co.edu.ufps.dto.Usuario" id="usuario" scope="session"></jsp:useBean>
<%
    //obtenemos la empresa a la que le vamos asignar el servicio con sus logros
    String nombre_empresa = request.getParameter("nombre_empresa");
    EmpresaAdscrita e = controlador.buscarEmpresaAds(nombre_empresa);
    
    String id_servicio = request.getParameter("id_servicio");
    String id_logro = request.getParameter("id_logro");
    
    controlador.addServicio_Logro(id_servicio, id_logro, e);

%>
