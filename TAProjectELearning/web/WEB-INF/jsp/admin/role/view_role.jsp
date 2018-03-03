<%-- 
    Document   : view_role
    Created on : Mar 3, 2018, 11:07:21 AM
    Author     : Sou
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <p><a href="form_tambah_role.htm">Tambah Role</a></p>
        <table>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Short Name</th>
                <th>Description</th>
                <th>Action</th>
            </tr>
            <c:forEach var="data" items="${listRole}">
                <c:url var="delete" value="delete_role.htm">
                    <c:param name="id" value="${data.id}"/>
                </c:url>
                <tr>
                    <td>${data.id}</td>
                    <td>${data.name}</td>
                    <td>${data.shortname}</td>
                    <td>${data.description}</td>
                    <td><a href="${delete}">X</a></td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
