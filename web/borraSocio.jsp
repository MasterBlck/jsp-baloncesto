<%-- 
    Document   : borraSocio
    Created on : Dec 29, 2017, 10:50:23 PM
    Author     : tools
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <!--Código BACKEND para eliminar un registro-->
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/baloncesto","root", "Lvu931amD73");
            Statement s = conexion.createStatement();
            s.execute ("DELETE FROM socio WHERE socioID=" + request.getParameter("codigo"));
        %>
        <!--Al momento de ejecutar la acción del botón de borrar, se ejecuta éste código del ducumento e inmediatamente vuelve a llamar al archivo de abajo que fué el que lo llamó-->
        <!--Código de JavaScript-->
        <script>document.location = "pideNumeroSocio.jsp"</script> 
    </body>
</html>
