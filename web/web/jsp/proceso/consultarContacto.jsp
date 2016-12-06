<%-- 
    Document   : consultarContacto
    Created on : 06-dic-2016, 16:15:43
    Author     : manue
--%>

<%@page import="co.edu.ufps.dto.Contacto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="co.edu.ufps.controlador.Controlador" id="controlador" scope="session"></jsp:useBean>
<%
    String tipoBusqueda = request.getParameter("busqueda");
    String valorBuscado = request.getParameter("parametro");
    Contacto c = controlador.buscarContacto(tipoBusqueda, valorBuscado);
%>
<table>
    <thead class="striped">
        <tr>
            <th data-field="name">Nombre</th>
            <th data-field="price">E-mail</th>
            <th data-field="price">Crear empresa</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><%=c.getCto_nombres()%></td>
            <td><%=c.getCto_email()%></td>
            <td><a href="crearEmpresa.jsp" class="btn">Crear</a></td>
        </tr>
    </tbody>
</table>

