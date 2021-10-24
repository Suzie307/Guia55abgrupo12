<%-- 
    Document   : validar
    Created on : Oct 23, 2021, 1:58:27 PM
    Author     : xdxmg
--%>
<%@page import="java.sql.*"%>
<%@page import="javax.servlet.http.*"%>
<%@include file="../Conectar/Connection.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%
String nombre,password,query,login;
ResultSet rs=null;
Statement st=null;

nombre=request.getParameter("nombre");
password=request.getParameter("password");

Connection conexion=getConnection();
st=conexion.createStatement();

    query=" select * from usuarios where";
    query+=" nombre='"+nombre+"' and ";
    query+=" clave='"+password+"'";
    
    try{
    rs=st.executeQuery(query);
    rs.next();
    login=rs.getString("login");
    out.println("<p>Query Ejecutado:"+query+"</p>");
    }catch(Exception e){
    
    out.println("<p>usuario o contraseña incorrecta erro:"+e+"</p>");
    }
   
%>

