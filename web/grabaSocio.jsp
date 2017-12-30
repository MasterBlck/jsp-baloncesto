<%-- 
    Document   : grabaSocio
    Created on : Dec 29, 2017, 10:06:08 PM
    Author     : tools
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Grabando Socio</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <% request.setCharacterEncoding("UTF-8"); %>
        <%
            //aquí de nuevo se solicita la conexión (se puede mejorar)
            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/baloncesto","root", "Lvu931amD73");
            Statement s = conexion.createStatement();
            
            //Se prepara la consulta para la insercción de datos
            String insercion = "INSERT INTO socio VALUES (" + Integer.valueOf(request.getParameter("numero"))
                                + ", '" + request.getParameter("nombre")
                                + "', " + Integer.valueOf(request.getParameter("estatura"))
                                + ", " + Integer.valueOf(request.getParameter("edad"))
                                + ", '" + request.getParameter("localidad") + "')";
            
            s.execute(insercion);
            conexion.close();
        %>
        
        <p>Socio dado de alta ;)</p>
    </body>
</html>
