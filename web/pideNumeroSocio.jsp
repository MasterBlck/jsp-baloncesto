<%-- 
    Document   : pideNumeroSocio
    Created on : Dec 29, 2017, 10:33:22 PM
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
        <link rel="stylesheet" type="text/css" href="estilos.css" />
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/baloncesto","root", "Lvu931amD73");
            Statement s = conexion.createStatement();
            ResultSet listado = s.executeQuery ("SELECT * FROM socio");
        %>
        
        <table>
             <tr>
                 <th>Código</th><th>Nombre</th><th>Estatura</th><th>Edad</th><th>Localidad</th>
             </tr>
             
             <%
                 //La variable 'listado' se puede usar dentro de éste bloque de código de JSP a pesar de que se declaró arriba
                 while (listado.next()) {
                    out.println("<tr>"
                                    + "<td>" +listado.getString("socioID")+ "</td>"
                                    + "<td>" +listado.getString("nombre")+ "</td>"
                                    + "<td>" +listado.getString("estatura")+ "</td>"
                                    + "<td>" +listado.getString("edad")+ "</td>"
                                    + "<td>" + listado.getString("localidad") + "</td>" );
                
             %>     <!--Bloque de código de JSP termina pero no termina el bloque de while-->
             
                                    <td>
                                       <form method="get" action="borraSocio.jsp">  
                                         <input type="hidden" name="codigo" value="<%=listado.getString("socioID") %>"/>  <!--Sintáxis para asignar el socioID al valor de input-->
                                         <input type="submit" value="borrar">
                                       </form>
                                    </td>
                                </tr>    
             <!--Continúa el código a pesar de estar fragmentado-->     
             <% 
                 } // while   
                 conexion.close();
             %>

        </table>
    </body>
</html>
