<%-- 
    Document   : index
    Created on : Oct 20, 2021, 9:45:41 AM
    Author     : xdxmg
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*,java.util.*,java.sql.*"%>
<%@include file="Conectar/Connection.jsp" %>
<%@taglib uri= "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Biblioteca</title>
  <H1>LIBROS</H1>
     
    </head>
    <body>

  
    <form action="CRUD/insert.jsp" method="Post" name="Actualizar">
        <table><table border="0" width="2" cellspacing="1" cellpadding="1">
                <tbody>
                    <tr>
                        <td>ISBN</td>
                        <td><input type="text" name="isbn" value="" size="30"</td>
                    </tr>
                     <tr>
                        <td>Titulo</td>
                        <td><input type="text" name="titulo" value="" size="30"</td>
                    </tr>
                     <tr>
                        <td>Autor</td>
                        <td><input type="text" name="autor" value="" size="30"</td>
                    </tr>
                     <tr>
                        <td>Editorial</td>
                        <td><input type="text" name="editorial" value="" size="30"</td>
                    </tr>
                </tbody>
            </table>
            <br>
 <tr>
 <td>  
       <input type="hidden" name="Action" value="Crear" checked />
 </td>
 <td><input type="SUBMIT" value="Insertar libro" />
</td>
 </tr>
 </form>
    <body>
        <br><br>
</table>
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

out.println("<table border=\"1\"><tr><td>Num.</td><td>ISBN</td><td>Titulo</td><td>Autor</td><td>Editorial</td><td>Accion</td></tr>");
      int i=1;
      while (rs.next())
      {
         int id=rs.getInt("Id");
         String isbn=rs.getString("isbn");
         String titulo=rs.getString("titulo");
         String autor=rs.getString("autor");
         String editorial=rs.getString("editorial");
         
         
         out.println("<tr>");
         out.println("<td>"+ i +"</td>");
         out.println("<td>"+isbn+"</td>");
         out.println("<td>"+titulo+"</td>");
         out.println("<td>"+autor+"</td>");
         out.println("<td>"+editorial+"</td>");
         
         
         out.println("<td><a href=\"CRUD/delete.jsp?isbn="+isbn+"&titulo="+titulo+"&autor="+autor+"&editorial="+editorial+"\">Eliminar</a>"+" , "+
         "<a href=\"CRUD/frmupdate.jsp?isbn="+isbn+"&titulo="+titulo+"&autor="+autor+"&editorial="+editorial+"&id="+id+"\">Actualizar</a></td>");
         
         out.println("</tr>");
         i++;
      }
      out.println("</table>");

%>
    </body>
</html>

