<%-- 
    Document   : formularioSocio
    Created on : Dec 29, 2017, 10:01:20 PM
    Author     : tools
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!--Entrada de datos (Front end) para el usuario quien envía los datos a otra página-->
        <h2>Introduzca los datos del nuevo socio:</h2>
        <form method="get" action="grabaSocio.jsp">
            Nº socio <input type="text" name="numero"/></br>
            Nombre <input type="text" name="nombre"/></br>
            Estatura <input type="text" name="estatura"/></br>
            Edad <input type="text" name="edad"/></br>
            Localidad <input type="text" name="localidad"/></br>
            <input type="submit" value="Aceptar">
        </form>
    </body>
</html>
