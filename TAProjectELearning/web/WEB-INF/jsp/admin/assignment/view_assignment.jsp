<%-- 
    Document   : view_assignment
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
        <title>View Assignment</title>
    </head>
    <body>
        <h1>Daftar Assignment</h1>
        <p><a href="form_tambah_assignment.htm">Tambah Assignment</a></p>
        <table>
            <tr>
                <td>Id Assignment</td>
                <td>Id Course</td>
                <td>Name</td>
                <td>Action</td>
            </tr>
            <c:forEach var="data" items="${listAssignment}">
                <c:url var="delete" value="delete_assignment.htm">
                    <c:param name="id" value="${data.id}"/>
                </c:url>
                <c:url var="update" value="form_ubah_assignment.htm">
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
