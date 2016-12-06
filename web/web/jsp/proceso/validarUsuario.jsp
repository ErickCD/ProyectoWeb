<%-- 
    Document   : validarUsuario
    Created on : 26-nov-2016, 0:00:06
    Author     : Manuel Florez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:useBean class="co.edu.ufps.controlador.Controlador" id="controlador" scope="session"></jsp:useBean>
<jsp:useBean class="co.edu.ufps.dto.Usuario" id="usuario" scope="session"></jsp:useBean>
<jsp:setProperty property="*" name="usuario"/>

<%
    /**
     *  Validar que el usuario sea correcto
     */
    String res = controlador.validarUsuario(usuario);
    
    //si es valido el usuario
    if(res == null){
        response.sendRedirect("../dashboard.jsp");
    }else{
        session.setAttribute("error", res);
        response.sendRedirect("../login.jsp");
    }
    
%>

