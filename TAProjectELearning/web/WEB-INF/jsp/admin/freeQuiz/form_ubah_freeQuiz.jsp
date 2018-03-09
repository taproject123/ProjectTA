<%-- 
    Document   : form_ubah_freeQuiz
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
        <form:form modelAttribute="freeQuizDto" method="POST" action="update_freeQuiz.htm">
            <form:input path="id" placeholder="ID FreeQuiz"/><br/>
            <form:input path="free_quiz" placeholder="Free Quiz"/><br/>
            <form:input path="answer" placeholder="Answer"/><br/>
            <form:input path="timeopen" placeholder="Time Open"/><br/>
            <form:input path="timeclose" placeholder="Time Close"/><br/>
            <form:input path="timelimit" placeholder="Time Limit"/><br/>
            <form:input path="id_course" placeholder="Id Course"/><br/>
            <form:input path="id_materi" placeholder="Id Materi"/><br/>
            <form:input path="id_level" placeholder="ID Level"/><br/>
            <input type="submit" value="Submit"/>
        </form:form>
    </body>
</html>
