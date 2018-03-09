<%-- 
    Document   : form_ubah_level
    Created on : Mar 9, 2018, 6:42:28 PM
    Author     : Sou
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Form Ubah Level</title>
    </head>
    <body>
        <h1>Ubah Level</h1>
        <form:form modelAttribute="levelDto" method="POST" action="update_level.htm">
            <form:input path="id" placeholder="ID Level"/><br/>
            <form:input path="level" placeholder="Level"/><br/>
            <input type="submit" value="Submit"/>
        </form:form>
    </body>
</html>
