<%-- 
    Document   : form_ubah_course
    Created on : Mar 10, 2018, 9:17:22 AM
    Author     : Sou
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ubah Course</title>
    </head>
    <body>
        <h1>Form Ubah Course</h1>
        <form:form modelAttribute="courseDto" method="POST" action="update_course.htm">
            <form:input path="id" placeholder="id"/><br/>
            <form:input path="category" placeholder="category"/><br/>
            <form:input path="fullname" placeholder="fullname"/><br/>
            <form:input path="shortname" placeholder="shortname"/><br/>
            <form:input path="idnumber" placeholder="idnumber"/><br/>
            <form:input path="format" placeholder="format"/><br/>
            <form:input path="startdate" placeholder="startdate"/><br/>
            <form:hidden path="timecreated" />
            <input type="submit" value="Submit"/>
        </form:form>
</body>
</html>
