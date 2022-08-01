<%@page import="logica.Persona"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Personas</title>
    </head>
    
        <h1>Lista de personas en la base de datos</h1>
        
        <%
            List<Persona> listaPersonas = (List) request.getSession().getAttribute("listaPersonas");
            
            for (Persona per : listaPersonas){
                  
        %>
        <p><b>Dni: </b>  <%=per.getDni()%></p> 
        <p><b>Nombre: </b>  <%=per.getNombre()%></p>
        <p><b>Apellido: </b>  <%=per.getApellido()%></p>
        <p><b>Telefono: </b>  <%=per.getTelefono()%></p>    
        <p>----------------------------------</p>
        <% } %>
    

