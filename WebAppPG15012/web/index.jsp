<%-- 
    Document   : index
    Created on : Oct 20, 2021, 9:45:41 AM
    Author     : xdxmg
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*,java.util.*,java.sql.*"%>
<%@taglib uri= "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Biblioteca</title>
  <H1>LIBROS</H1>
     
    </head>
    <form action="insert.jsp" method="get/post" name="Actualizar">
 <table>
 <tr>
 <td>ISBN<input type="text" name="isbn" value="" size="40"/>
</td>
  </tr>
 <tr>
 <td>Titulo<input type="text" name="titulo" value="" size="50"/></td>
  </tr>
  <tr>
 <td>autor<input type="text" name="isbn" value="" size="40"/>
 </td>
 
 <tr><td> Action <input type="radio" name="Action" value="Actualizar" /> Actualizar
 <input type="radio" name="Action" value="Eliminar" /> Eliminar
 <input type="radio" name="Action" value="Crear" checked /> Crear
  </td>
 <td><input type="SUBMIT" value="ACEPTAR" />
</td>
 </tr>
 </form>
    <body>
        
</table>

<%!
public Connection getConnection() throws SQLException {

    String userName,password,url,driver;
    Connection con=null;
    userName="root";
    password="";
    url="jdbc:mariadb://localhost:3308/biblioteca";
    driver="org.mariadb.jdbc.Driver";
    try {
     Class.forName(driver);
    con=DriverManager.getConnection(url, userName, password);
        } catch (Exception e) {
          e.printStackTrace();
        }
return con;
}

%>

<%
Connection conexion = null;
Statement st=null;
ResultSet rs=null;
conexion=getConnection();
  if(conexion != null){
    out.println("Database Connected.");
    } else {
    out.println("Database Connect Failed.");
    }
st=conexion.createStatement();
rs=st.executeQuery("Select * from libros");

out.println("<table border=\"1\"><tr><td>Num.</td><td>ISBN</td><td>Titulo</td><td>Autor</td><td>Editorial</td></tr>");
      int i=1;
      while (rs.next())
      {
         out.println("<tr>");
         out.println("<td>"+ i +"</td>");
         out.println("<td>"+rs.getString("isbn")+"</td>");
         out.println("<td>"+rs.getString("titulo")+"</td>");
         out.println("<td>"+rs.getString("autor")+"</td>");
         out.println("<td>"+rs.getString("editorial")+"</td>");
         out.println("</tr>");
         i++;
      }
      out.println("</table>");

%>
    </body>
</html>

