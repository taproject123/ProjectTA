<%-- 
    Document   : view_user
    Created on : Feb 11, 2018, 6:53:41 PM
    Author     : Sou
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User</title>
    </head>
    <body>
        <c:forEach var="data" items="${listUser}">
            User : ${data.id}
        </c:forEach>
    </body>
</html>
