<%-- 
    Document   : consultarEmpresaAdscrita
    Created on : 13-dic-2016, 14:24:16
    Author     : manue
--%>

<%@page import="java.util.List"%>
<%@page import="co.edu.ufps.dto.EmpresaAdscrita"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="co.edu.ufps.controlador.Controlador" id="controlador" scope="session"></jsp:useBean>
<%
    String tipoBusqueda = request.getParameter("busqueda2");
    String valorBuscado = request.getParameter("parametro2");
    List<EmpresaAdscrita> lista = controlador.buscarEmpresaAds(tipoBusqueda, valorBuscado);
%>