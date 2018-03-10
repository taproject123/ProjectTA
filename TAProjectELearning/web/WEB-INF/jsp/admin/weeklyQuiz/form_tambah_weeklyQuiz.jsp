<%-- 
    Document   : form_tambah_weeklyQuiz
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
        <title>Form Tambah Free Quiz</title>
    </head>
    <body>
        <h1>Tambah Free Quiz</h1>
        <form:form modelAttribute="weeklyQuizDto" method="POST" action="save_weeklyQuiz.htm">
            <form:input path="id" placeholder="ID WeeklyQuiz"/><br/>
            <form:input path="weekly_quiz" placeholder="Free Quiz"/><br/>
            <form:input path="answer" placeholder="Answer"/><br/>
            <form:input path="timeopen" placeholder="Time Open"/><br/>
            <form:input path="timeclose" placeholder="Time Close"/><br/>
            <form:input path="timelimit" placeholder="Time Limit"/><br/>
            <form:input path="id_course" placeholder="Id Course"/><br/>
            <form:input path="id_materi" placeholder="Id Materi"/><br/>
            <input type="submit" value="Submit"/>
        </form:form>
    </body>
</html>
