<%-- 
    Document   : view_freeQuiz
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
        <title>View FreeQuiz</title>
    </head>
    <body>
        <h1>Daftar FreeQuiz</h1>
        <p><a href="form_tambah_freeQuiz.htm">Tambah FreeQuiz</a></p>
        <table>
            <tr>
                <td>id</td>
                <td>free_quiz</td>
                <td>answer</td>
                <td>timeopen</td>
                <td>timeclose</td>
                <td>timelimit</td>
                <td>id_course</td>
                <td>id_materi</td>
                <td>id_level</td>
                <td>Action</td>
            </tr>
            <c:forEach var="data" items="${listFreeQuiz}">
                <c:url var="delete" value="delete_freeQuiz.htm">
                    <c:param name="id" value="${data.id}"/>
                </c:url>
                <c:url var="update" value="form_ubah_freeQuiz.htm">
                    <c:param name="id" value="${data.id}"/>
                </c:url>
                <tr>
                    <td>${data.id}</td>
                    <td>${data.free_quiz}</td>
                    <td>${data.answer}</td>
                    <td>${data.timeopen}</td>
                    <td>${data.timeclose}</td>
                    <td>${data.timelimit}</td>
                    <td>${data.id_course}</td>
                    <td>${data.id_materi}</td>
                    <td>${data.id_level}</td>
                    <td><a href="${delete}">X</a> <a href="${update}">O</a> </td>
                </tr>
            </c:forEach>
        </table>
    </body>
