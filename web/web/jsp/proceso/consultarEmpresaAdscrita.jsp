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
    String tipoBusqueda = request.getParameter("busqueda");
    String valorBuscado = request.getParameter("parametro");
    
    List<EmpresaAdscrita> lista = controlador.buscarEmpresaAds(tipoBusqueda, valorBuscado);
%>
<!-- tabla de empresas adscritas -->
<table class="striped">
    <thead>
        <tr>
            <th>Nombre Empresa</th>
            <th>Email</th>
            <th>Sitio web</th>
            <th>gerente</th>
            <th>Editar</th>
            <th>Registrar Servicio</th>
        </tr>
    </thead>

    <tbody>
        <% for (EmpresaAdscrita e : lista) {%>
        <tr>
            <td><%=e.getNombre_empresa()%></td>
            <td><%=e.getEmail()%></td>
            <td><%=e.getSitio_web()%></td>
            <td><%=e.getNombre_gerente()%></td>
            <td><a href="#" class="btn red">Editar</a></td>
            <td><a href="#" class="btn">Registrar</a></td>
        </tr>
        <%}%>
    </tbody>
</table>
<!-- tabla de empresas adscritas -->