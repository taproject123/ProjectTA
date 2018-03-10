<%-- 
    Document   : view_lesson
    Created on : Mar 9, 2018, 6:36:31 PM
    Author     : Sou
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Lesson</title>
    </head>
    <body>
        <h1>Daftar Lesson</h1>
        <p><a href="form_tambah_lesson.htm">Tambah Lesson</a></p>
        <table>
            <tr>
                <td>Id Lesson</td>
                <td>Id Course</td>
                <td>Name</td>
                <td>Action</td>
            </tr>
            <c:forEach var="data" items="${listLesson}">
                <c:url var="delete" value="delete_lesson.htm">
                    <c:param name="id" value="${data.id}"/>
                </c:url>
                <c:url var="update" value="form_ubah_lesson.htm">
                    <c:param name="id" value="${data.id}"/>
                </c:url>
                <tr>
                    <td>${data.id}</td>
                    <td>${data.course}</td>
                    <td>${data.name}</td>
                    <td><a href="${delete}">X</a> <a href="${update}">O</a> </td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
