<%-- 
    Document   : form_ubah_lesson
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
        <title>Ubah Lesson</title>
    </head>
    <body>
        <form:form modelAttribute="lessonDto" method="POST" action="update_lesson.htm">
            <form:input path="id" placeholder="ID Lesson"/><br/>
            <form:input path="course" placeholder="Course"/><br/>
            <form:input path="name" placeholder="Name"/><br/>
            <input type="submit" value="Submit"/>
        </form:form>
    </body>
</html>