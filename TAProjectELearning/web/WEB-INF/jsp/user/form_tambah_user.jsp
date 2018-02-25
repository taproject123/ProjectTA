<%-- 
    Document   : form_tambah_user
    Created on : Feb 24, 2018, 11:29:42 AM
    Author     : Sou
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tambah User</title>
    </head>
    <body>
        <p>User Sekarang adalah ${username} dengan password ${password} / silahkan log out untuk menghapus session ini</p>
        <form:form modelAttribute="userDto" name="form_user" method="POST" action="save_user.htm">
            <form:input path="id" placeholder="id" /><br/>
            <form:input path="firstname" placeholder="firstname" /><br/>
            <form:input path="username" placeholder="lastname" /><br/>
            <form:input path="password" placeholder="password" /><br/>
            <form:input path="id_role" placeholder="id_role" /><br/>
            <input type="submit" value="Simpan"/>
        </form:form>
    </body>
</html>
