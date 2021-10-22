<%-- 
    Document   : delete
    Created on : Oct 21, 2021, 7:07:10 PM
    Author     : xdxmg
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="../Conectar/Connection.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Libro a eliminar</title>
        
    </head>
    <body>
        <h1>Detalles de libro a eliminar</h1>
        <form action="delete.jsp" method="get/post" name="Actualizar">
        <table><table border="0" width="2" cellspacing="1" cellpadding="1">
                <tbody>
                    <tr>
                        <td>ISBN</td>
                        <td><input type="text" name="isbn" value="<%=request.getParameter("isbn")%>" size="30"</td>
                    </tr>
                     <tr>
                        <td>Titulo</td>
                        <td><input type="text" name="titulo" value="<%=request.getParameter("titulo")%>" size="30"</td>
                    </tr>
                     <tr>
                        <td>Autor</td>
                        <td><input type="text" name="autor" value="<%=request.getParameter("autor")%>" size="30"</td>
                    </tr>
                     <tr>
                        <td>Editorial</td>
                        <td><input type="text" name="editorial" value="<%=request.getParameter("editorial")%>" size="30"</td>
                    </tr>
                </tbody>
            </table>
            <br>
 <tr>
 <td>  
        <input type="hidden" name="Action" value="Eliminar" />
       
 </td>
 <td><input type="SUBMIT" value="Eliminar" />
</td>
 </tr>
 </form>
 <%
   
    String isbn,titulo,query,action;
    action=request.getParameter("Action");
    isbn=request.getParameter("isbn");
    titulo=request.getParameter("titulo");
    if(action!=null){
    Connection conexion=getConnection();
    Statement st=conexion.createStatement();
        query=" delete from libros where isbn =";
        query += "'" + isbn + "'";
    st.execute(query);
    out.println("<p>Query Ejecutado:"+query+"</p>");
    out.println("<p>Libro: "+titulo+"con isbn:"+isbn+"a sido borrado de la </p>");
    out.println("<p>datos biblioteca");
    }
    
 %>
 <br>
 <a href="../index.jsp">Regresar</a>
    </body>
</html>
