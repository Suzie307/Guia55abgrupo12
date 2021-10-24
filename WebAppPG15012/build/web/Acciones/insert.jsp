<%-- 
    Document   : insert
    Created on : Oct 21, 2021, 6:54:30 PM
    Author     : xdxmg
--%>

<%@page import="java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<%@include file="../Conectar/baseDatos.jsp"%>

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
        <p>isbn:"<%=request.getParameter("isbn")%>"</p>
        <p>titulo:"<%=request.getParameter("titulo")%>"</p>
        <p>autor:"<%=request.getParameter("autor")%>"</p>
        <p>editorial:"<%=request.getParameter("editorial")%>"</p>
        
<sql:update dataSource = "${baseDatos}" >
            insert into libros (isbn,titulo,autor,editorial) values ("<%=request.getParameter("isbn")%>","<%=request.getParameter("titulo")%>","<%=request.getParameter("autor")%>","<%=request.getParameter("editorial")%>")
</sql:update>
            <p>exitoso</p>
<br>
<a href="../index.jsp">Regresar</a>

    </body>
</html>

