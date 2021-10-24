<%-- 
    Document   : frmupdate
    Created on : Oct 21, 2021, 7:06:41 PM
    Author     : xdxmg
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulario de Actualizarion</title>
        
    </head>
    <body>
        <h1>Detalles</h1>
        <form action="update.jsp" method="get/post" name="Actualizar">
        <table><table border="0" width="2" cellspacing="1" cellpadding="1">
                <tbody>
                    <input type="hidden" name="id" value="<%=request.getParameter("id")%>"  size="30"</td>
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
 <td> Action 
        <input type="radio" name="action" value="Actualizar" checked /> Actualizar
       
 </td>
 <td><input type="SUBMIT" value="Submit" />
</td>
 </tr>
 </form>
<a href="../index.jsp">Regresar</a>
    </body>
</html>
