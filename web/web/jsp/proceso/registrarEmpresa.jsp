<%-- 
    Document   : registrarEmpresa
    Created on : 13-dic-2016, 10:11:19
    Author     : Manuel Florez
--%>

<%@page import="co.edu.ufps.dto.Contacto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="co.edu.ufps.controlador.Controlador" id="controlador" scope="session"></jsp:useBean>
<jsp:useBean class="co.edu.ufps.dto.Usuario" id="usuario" scope="session"></jsp:useBean>
<jsp:useBean class="co.edu.ufps.dto.Empresa" id="empresa"></jsp:useBean>
<jsp:setProperty property="*" name="empresa"/>
<%
    Contacto c = controlador.buscarContacto("",request.getParameter("email"));
    
    c.setCto_lugar_nacimiento(request.getParameter("cto_lugar_nacimiento"));
    c.setCto_antiguedad_cargo(request.getParameter("cto_antiguedad_cargo"));
    c.setCto_nivel_estudio(request.getParameter("cto_nivel_estudio"));
    c.setCto_etnia(request.getParameter("cto_etnia"));
    c.setCto_condicion_desplazado(request.getParameter("cto_condicion_desplazado"));
    c.setCto_discapacidad(request.getParameter("cto_discapacidad"));
    c.setCto_fecha_nacimiento(request.getParameter("cto_fecha_nacimiento"));

    System.out.println("-------------------------------------");
    System.out.println(request.getParameter("cto_lugar_nacimiento"));
    System.out.println(request.getParameter("cto_antiguedad_cargo"));
    System.out.println(request.getParameter("cto_nivel_estudio"));
    System.out.println(request.getParameter("cto_etnia"));
    System.out.println(request.getParameter("cto_condicion_desplazado"));
    System.out.println(request.getParameter("cto_discapacidad"));
    System.out.println(request.getParameter("cto_fecha_nacimiento"));
    System.out.println("-------------------------------------");
    
    
    //true bien
    boolean bien = controlador.actualizarConcato(c);
    
    //si no se pudo actualizar
    if(!bien){
        response.sendRedirect("../paginaDeError.jsp");
    }
    
    //si no se pudo registrar
    bien = controlador.registrarEmpresa(empresa,c);
    if(!bien){
        response.sendRedirect("../paginaDeError.jsp");
    }
%>
