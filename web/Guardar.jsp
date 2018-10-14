<%-- 
    Document   : Guardar
    Created on : 11-oct-2018, 21:43:20
    Author     : Programacion
--%>

<%@page import="DATOS.Usuario"%>
<%
    String Nombre,Apellido,Direccion;
    Integer ID = Integer.parseInt(request.getParameter("txtID"));
    Nombre = request.getParameter("txtNombre");
    Apellido = request.getParameter("txtApellido");
    Direccion = request.getParameter("txtDireccion");
    
    Usuario objUsu = new Usuario();
    Usuario objUsu2 = new Usuario();
    objUsu.setID(ID);
    objUsu.setNombre(Nombre);
    objUsu.setApellido(Apellido);
    objUsu.setDireccion(Direccion);
    if(objUsu2.addNewUser(objUsu)){
        out.println("Registro el Usuario");
        out.println("<h1><li><a href='Listar.jsp'>Listar</a></i></h1>");
    }else {
        out.println("No se puede registrar al nuevo usuario");
    }
    
%>
