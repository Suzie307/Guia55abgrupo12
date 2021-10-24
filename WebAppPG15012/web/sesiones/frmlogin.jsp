<%-- 
    Document   : frmlogin
    Created on : Oct 23, 2021, 12:59:01 PM
    Author     : xdxmg
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        
    </head>
    <body>
        <h1>Iniciar Sesion</h1>
        <form action="validar.jsp" method="post" name="sesion">
            <p>Nombre:<input type="text" name="nombre" size="15"></p>
            <p>Password:<input type="password" name="password" size="14"></p>
            <p><input type="submit" value="Enviar"></p>
        </form>
    </body>
</html>
