<%-- 
    Document   : index
    Created on : Oct 20, 2021, 9:45:41 AM
    Author     : xdxmg
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<%@include file="Conectar/baseDatos.jsp" %>





<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Biblioteca</title>
  <H1>LIBROS</H1>
     
    </head>
    <body>

  
    <form action="Acciones/insert.jsp" method="Post" name="Actualizar">
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
<sql:query dataSource = "${baseDatos}" var = "result">
            SELECT * from libros;
        </sql:query>

        <table border = "1" width = "50%">
            <tr>
                <th>ID</th>
                <th>ISBN</th>
                <th>Titulo</th>
                <th>Autor</th>
                <th>Editorial</th>
                <th>Accion</th>
            </tr>

            <c:forEach var = "row" items = "${result.rows}">
                <tr>
                    <td>
                        <c:out value = "${row.Id}"/>
                        
                    </td>
                    <td>
                        <c:out value = "${row.isbn}"/>
                    </td>
                    <td>
                        <c:out value = "${row.titulo}"/>
                    </td>
                    <td>
                        <c:out value = "${row.autor}"/>
                    </td>
                    <td>
                        <c:out value = "${row.editorial}"/>
                    </td>
                    <td>
                        <a href="Acciones/delete.jsp?id=${row.Id}&isbn=${row.isbn}&titulo=${row.titulo}&autor=${row.autor}&editorial=${row.editorial}">Eliminar</a>
                        <a href="Acciones/frmupdate.jsp?id=${row.Id}&isbn=${row.isbn}&titulo=${row.titulo}&autor=${row.autor}&editorial=${row.editorial}">Actualizar</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>

