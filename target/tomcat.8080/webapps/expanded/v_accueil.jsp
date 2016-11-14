<%-- 
    Document   : v_accueil
    Created on : Oct 4, 2016, 2:29:12 PM
    Author     : Ersagun
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <p>
        <p><jsp:getProperty name="user" property="username" /></p>
        <p>-------------------------------</p>
        <p>Page: <jsp:getProperty name="compteur" property="page" /></p>
        
    </body>
</html>
