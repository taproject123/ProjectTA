<%-- 
    Document   : view_level
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
        <title>View Level</title>
    </head>
    <body>
        <h1>Daftar Level</h1>
        <p><a href="form_tambah_level.htm">Tambah Level</a></p>
        <table>
            <tr>
                <td>Id Level</td>
                <td>Level</td>
                <td>Action</td>
            </tr>
            <c:forEach var="data" items="${listLevel}">
                <c:url var="delete" value="delete_level.htm">
                    <c:param name="id" value="${data.id}"/>
                </c:url>
                <c:url var="update" value="form_ubah_level.htm">
                    <c:param name="id" value="${data.id}"/>
                </c:url>
                <tr>
                    <td>${data.id}</td>
                    <td>${data.level}</td>
                    <td><a href="${delete}">X</a> <a href="${update}">O</a> </td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
