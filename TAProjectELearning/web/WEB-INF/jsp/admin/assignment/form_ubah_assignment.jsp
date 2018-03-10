<%-- 
    Document   : form_ubah_assignment
    Created on : Mar 10, 2018, 8:42:52 AM
    Author     : Sou
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ubah Assignment</title>
    </head>
    <body>
        <form:form modelAttribute="assignmentDto" method="POST" action="update_assignment.htm">
            <form:input path="id" placeholder="ID Assignment"/><br/>
            <form:input path="course" placeholder="Course"/><br/>
            <form:input path="name" placeholder="Name"/><br/>
            <input type="submit" value="Submit"/>
        </form:form>
    </body>
</html>