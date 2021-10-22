<%-- 
    Document   : Connection
    Created on : Oct 22, 2021, 3:19:55 AM
    Author     : xdxmg
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%!
public Connection getConnection() throws SQLException {

    String userName,password,url,driver;
    Connection con=null;
    userName="root";
    password="";
    url="jdbc:mariadb://localhost:3308/biblioteca";
    driver="org.mariadb.jdbc.Driver";
    try {
     Class.forName(driver);
    con=DriverManager.getConnection(url, userName, password);
        } catch (Exception e) {
          e.printStackTrace();
        }
return con;
}


%>