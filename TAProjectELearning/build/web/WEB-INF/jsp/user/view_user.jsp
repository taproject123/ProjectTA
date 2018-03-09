<%-- 
    Document   : view_user
    Created on : Feb 28, 2018, 5:51:35 AM
    Author     : Sou
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>view user</title>
    </head>
    <body>
        <h1>View User</h1>
        <p><a href="signup.htm">Add User</a></p>
        <table border="1">
            <thead>
                <th>ID</th>
                <th>User Name</th>
                <th>Password</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Email</th>
                <th>Skype</th>
                <th>Yahoo</th>
                <th>Phone 1</th>
                <th>Phone 2</th>
                <th>Institution</th>
                <th>Department</th>
                <th>Address</th>
                <th>City</th>
                <th>Country</th>
                <th>Timezone</th>
                <th>First Access</th>
                <th>Last Access</th>
                <th>Last Login</th>
                <th>Current Login</th>
                <th>Picture</th>
                <th>Description</th>
                <th>Time Created</th>
                <th>Time Modified</th>
                <th>Imagealt</th>
                <th>Last Name Phonetic</th>
                <th>First Name Phonetic</th>
                <th>Middle Name</th>
                <th>Alternate Name</th>
                <th>Role</th>
                <th>Action</th>
            </thead>
            <c:forEach var="listData" items="${listUser}">
                <c:url var="delete" value="delete_user.htm">
                    <c:param name="id" value="${data.id}"/>
                </c:url>
                <c:url var="update" value="form_ubah_user.htm">
                    <c:param name="id" value="${data.id}"/>
                </c:url>
                <tbody>
                    <td>${listData.id}</td>
                    <td>${listData.username}</td>
                    <td>${listData.password}</td>
                    <td>${listData.firstname}</td>
                    <td>${listData.lastname}</td>
                    <td>${listData.email}</td>
                    <td>${listData.skype}</td>
                    <td>${listData.yahoo}</td>
                    <td>${listData.phone1}</td>
                    <td>${listData.phone2}</td>
                    <td>${listData.institution}</td>
                    <td>${listData.department}</td>
                    <td>${listData.address}</td>
                    <td>${listData.city}</td>
                    <td>${listData.country}</td>
                    <td>${listData.timezone}</td>
                    <td>${listData.firstaccess}</td>
                    <td>${listData.lastaccess}</td>
                    <td>${listData.lastlogin}</td>
                    <td>${listData.currentlogin}</td>
                    <td>${listData.picture}</td>
                    <td>${listData.description}</td>
                    <td>${listData.timecreated}</td>
                    <td>${listData.timemodified}</td>
                    <td>${listData.imagealt}</td>
                    <td>${listData.lastnamephonetic}</td>
                    <td>${listData.firstnamephonetic}</td>
                    <td>${listData.middlename}</td>
                    <td>${listData.alternatename}</td>
                    <td>${listData.id_role}</td>
                    <td><a href="${delete}">X</a> <a href="${update}">O</a></td>
                </tbody>
            </c:forEach>
        </table>
    </body>
</html>
