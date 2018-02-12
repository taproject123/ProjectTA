<%-- 
    Document   : login
    Created on : Feb 12, 2018, 6:39:12 PM
    Author     : Sou
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Form Login</title>
    </head>
    <body>
        <form:form modelAttribute="loginDto" name="formLogin" action="loginAction.htm" method="GET">
            <form:input path="username"/><br/>
            <form:input path="password"/><br/>
            <input type="submit" value="Login"/>
        </form:form>
    </body>
</html>
