<%-- 
    Document   : delete
    Created on : Oct 21, 2021, 7:07:10 PM
    Author     : xdxmg
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<%@include file="../Conectar/baseDatos.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Libro a eliminar</title>
        
    </head>
    <body>
        <h1>Detalles de libro a eliminar</h1>
        <form action="delete.jsp" method="get/post" name="Actualizar">
        <table border="0" width="2" cellspacing="1" cellpadding="1">
                <tbody>
                       <tr>
                        
                        <td>ISBN</td>
                        <td><input type="text" name="id" value="<%=request.getParameter("id")%>" size="30"</td>
                    </tr>
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
<c:set var="Action" scope="session" value='<%=request.getParameter("Action")%>'/>

<c:if test='${Action!=null}'>
<sql:update dataSource = "${baseDatos}" >
            DELETE FROM libros WHERE Id ="<%=request.getParameter("id")%>"
</sql:update>
<p> El libro se Borro con exito </p>
</c:if>
    

 <br>
 <a href="../index.jsp">Regresar</a>
    </body>
</html>
