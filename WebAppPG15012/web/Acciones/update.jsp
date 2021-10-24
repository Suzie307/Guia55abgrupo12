<%-- 
    Document   : update
    Created on : Oct 21, 2021, 7:06:56 PM
    Author     : xdxmg
--%>


<%@page import="java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<%@include file="../Conectar/baseDatos.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Actualizar</title>
    </head>
    <body>
       
        <h1>Insertar en bd </h1>
        <p>la informacion siguiente:</p>
        <p>isbn:"<%=request.getParameter("id")%>"</p>
        <p>isbn:"<%=request.getParameter("isbn")%>"</p>
        <p>titulo:"<%=request.getParameter("titulo")%>"</p>
        <p>autor:"<%=request.getParameter("autor")%>"</p>
        <p>editorial:"<%=request.getParameter("editorial")%>"</p>
        
<sql:update dataSource = "${baseDatos}" >
            update libros set isbn="<%=request.getParameter("isbn")%>", titulo="<%=request.getParameter("titulo")%>",autor="<%=request.getParameter("autor")%>",editorial="<%=request.getParameter("editorial")%>" where Id="<%=request.getParameter("id")%>"
</sql:update>
            <p>exitoso</p>
<br>
<a href="../index.jsp">Regresar</a>

    </body>
</html>
