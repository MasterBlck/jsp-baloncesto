<%-- 
    Document   : listadoSocios
    Created on : Dec 29, 2017, 9:34:56 PM
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
    <title>Listado Socios</title>
  </head>
  <body>
    <h1>Listado de Socios</h1>
	<%
		Class.forName("com.mysql.jdbc.Driver");  //carga del driver de mysql
		Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/baloncesto","root", "Lvu931amD73");  //se establece la conexión con la bd
		Statement s = conexion.createStatement();
		
		ResultSet listado = s.executeQuery ("SELECT * FROM socio ORDER BY edad DESC");
		
		while (listado.next()) {
			out.println(listado.getString("socioID") + " " + listado.getString ("nombre") + "<br>");
                }
		
		conexion.close();
	%>
  </body>
</html>