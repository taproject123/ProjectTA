<%-- 
    Document   : form_tambah_user
    Created on : Mar 3, 2018, 10:57:53 AM
    Author     : Sou
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Form Tambah Role</h1>
        <form:form modelAttribute="roleDto" action="save_role.htm" method="POST">
            <form:input path="id" placeholder="id"/><br/>
            <form:input path="name" placeholder="name"/><br/>
            <form:input path="shortname" placeholder="shortname"/><br/>
            <form:input path="description" placeholder="description"/><br/>
            <input type="submit" value="save"/>
        </form:form>
    </body>
</html>
