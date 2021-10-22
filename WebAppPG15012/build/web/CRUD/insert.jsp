<%-- 
    Document   : insert
    Created on : Oct 21, 2021, 6:54:30 PM
    Author     : xdxmg
--%>

<%@page import="java.sql.*"%>
<%@include file="../Conectar/Connection.jsp"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insertar</title>
    </head>
    <body>
        <h1>Insertar en bd </h1>
        <p>la informacion siguiente:</p>
        <%
    String isbn,titulo,autor,editorial,query;
    
    isbn=request.getParameter("isbn");
    titulo=request.getParameter("titulo");
    autor=request.getParameter("autor");
    editorial=request.getParameter("editorial");
    
    Connection conexion=getConnection();
    Statement st=conexion.createStatement();
        query=" insert into libros (isbn,titulo,autor,editorial)";
        query+="values (";
        query += "'" + isbn + "',";
        query += "'" + titulo + "',";
        query += "'" + autor + "',";
        query += "'" + editorial + "')";
    st.execute(query);
    out.println("<p>Query Ejecutado:"+query+"</p>");
    out.println("<p>Libro: "+titulo+"con isbn:"+isbn+"</p>");
    out.println("<p>en la base de datos biblioteca");
    
%>
<br>
<a href="../index.jsp">Regresar</a>

    </body>
</html>

