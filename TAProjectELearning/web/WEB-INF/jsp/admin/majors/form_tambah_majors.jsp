<%-- 
    Document   : form_tambah_majors
    Created on : Mar 9, 2018, 6:39:32 PM
    Author     : Sou
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Form Tambah Majors</title>
    </head>
    <body>
        <h1>Tambah Majors</h1>
        <form:form modelAttribute="majorsDto" method="POST" action="save_majors.htm">
            <form:input path="id" placeholder="ID Majors"/><br/>
            <form:input path="majors" placeholder="Majors"/>
            <input type="submit" value="Submit"/>
        </form:form>
    </body>
</html>
