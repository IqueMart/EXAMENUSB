<%-- 
    Document   : Listar
    Created on : 11-oct-2018, 21:08:12
    Author     : Programacion
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="DATOS.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>LISTAR USUARIOS</h1>
        <a href="Nuevo.jsp">Nuevo</a>/<a href="Listar.jsp">Listar</a>
        <table border="1">
            <tr>
                <td>ID</td><td>Nombre</td><td>Apellidos</td><td>Direccion</td>
                
            </tr>
            <%
                Usuario objUser=new Usuario();
                ArrayList<Usuario> ListUser=objUser.getListUsuarios();
                for(Usuario objitem : ListUser) {
                    out.print("<tr>");
                    out.print("<td>"+objitem.getID()+"</td><td>"+objitem.getNombre()+"</td><td>"+objitem.getApellido()+"</td><td>"+objitem.getDireccion()+"</td><td><a href>Actualizar</a></td>"+"</td><td><a href>Eliminar</a></td>");
                    out.print("<tr>");
                }
            %>
        </table>
    </body>
</html>
