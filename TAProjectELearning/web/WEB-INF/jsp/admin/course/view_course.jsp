<%-- 
    Document   : view_course
    Created on : Mar 10, 2018, 9:16:50 AM
    Author     : Sou
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Course</title>
    </head>
    <body>
        <h1>View Course</h1>
        <table border="1">
            <thead>
            <th>ID</th>
            <th>category</th>
            <th>fullname</th>
            <th>shortname</th>
            <th>Last Name</th>
            <th>idnumber</th>
            <th>startdate</th>
            <th>timecreated</th>
            <th>timemodified</th>
            <th>Action</th>
        </thead>
        <c:forEach var="listData" items="${listCourse}">
            <c:url var="delete" value="delete_course.htm">
                <c:param name="id" value="${listData.id}"/>
            </c:url>
            <c:url var="update" value="form_ubah_course.htm">
                <c:param name="id" value="${listData.id}"/>
            </c:url>
            <tbody>
            <td>${listData.id}</td>
            <td>${listData.category}</td>
            <td>${listData.fullname}</td>
            <td>${listData.shortname}</td>
            <td>${listData.idnumber}</td>
            <td>${listData.format}</td>
            <td>${listData.startdate}</td>
            <td>${listData.timecreated}</td>
            <td>${listData.timemodified}</td>
            <td><a href="${delete}">X</a> <a href="${update}">O</a></td>
            </tbody>
        </c:forEach>
    </table>
</body>
</html>
