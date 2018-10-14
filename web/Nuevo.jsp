<%-- 
    Document   : Nuevo
    Created on : 11-oct-2018, 21:17:34
    Author     : Programacion
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nuevo Usuario</title>
    </head>
    <body>
        <h1><a href="Listar.jsp">Regresar</a></h1>
        <form id="Form_guardar" action="Guardar.jsp">
        ID <input type="text" name="txtID"/><br>
        Nombre <input type="text" name="txtNombre"/><br>
        Apellido <input type="text" name="txtApellido"/><br>
        Direccion <input type="text" name="txtDireccion"/><br>
        <input type="submit" value="Guardar"/>
        </form>
    </body>
</html>
