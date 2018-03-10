<%-- 
    Document   : form_ubah_majors
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
        <title>Form Ubah Majors</title>
    </head>
    <body>
        <h1>Ubah Majors</h1>
        <form:form modelAttribute="majorsDto" method="POST" action="update_majors.htm">
            <form:input path="id" placeholder="ID Majors"/><br/>
            <form:input path="majors" placeholder="Majors"/><br/>
            <input type="submit" value="Submit"/>
        </form:form>
    </body>
</html>
