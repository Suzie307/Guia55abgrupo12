<%-- 
    Document   : update
    Created on : Oct 21, 2021, 7:06:56 PM
    Author     : xdxmg
--%>


<%@page import="java.sql.*"%>
<%@include file="../Conectar/Connection.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Actualizar</title>
    </head>
    <body>
        <h1>Actualizar en bd </h1>
        <p>la informacion siguiente:</p>
        <%
    int id;
    String isbn,titulo,autor,editorial,query,action;
    
    id=Integer.parseInt(request.getParameter("id"));
    isbn=request.getParameter("isbn");
    titulo=request.getParameter("titulo");
    autor=request.getParameter("autor");
    editorial=request.getParameter("editorial");
    action=request.getParameter("action");
    Connection conexion=getConnection();
    Statement st=conexion.createStatement();
        query=" update libros set ";
        query += "isbn = '" + isbn + "',";
        query += "titulo = '" + titulo + "',";
        query += "autor = '" + autor + "',";
        query += "editorial = '" + editorial + "'";
        query += "where Id="+id+";"; 
    st.execute(query);
     out.println("<p>Query Ejecutado:"+query+"</p>");
     out.println("<p>Datos Actualizados</p>");
    %>
<br>
<a href="../index.jsp">Regresar</a>

    </body>
</html>
