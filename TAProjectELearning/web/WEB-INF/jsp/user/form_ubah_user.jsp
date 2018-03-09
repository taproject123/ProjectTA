<%-- 
    Document   : form_ubah_user
    Created on : Mar 9, 2018, 7:11:39 PM
    Author     : Sou
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Ubah User</h1>
        <form:form modelAttribute="userDto" name="form_user" method="POST" action="update_user.htm">
            <form:input path="id" placeholder="id" /><br/>
            <form:input path="username" placeholder="username" /><br/>
            <form:input path="password" placeholder="password" /><br/>
            <form:input path="firstname" placeholder="firstname" /><br/>
            <form:input path="lastname" placeholder="lastname" /><br/>
            <form:input path="email" placeholder="email" /><br/>
            <form:input path="skype" placeholder="skype" /><br/>
            <form:input path="yahoo" placeholder="yahoo" /><br/>
            <form:input path="phone1" placeholder="phone1" /><br/>
            <form:input path="phone2" placeholder="phone2" /><br/>
            <form:input path="institution" placeholder="institution" /><br/>
            <form:input path="department" placeholder="department" /><br/>
            <form:input path="address" placeholder="address" /><br/>
            <form:input path="city" placeholder="city" /><br/>
            <form:input path="country" placeholder="country" /><br/>
            <form:input path="timezone" placeholder="timezone" /><br/>
            <form:input path="firstaccess" placeholder="firstaccess" /><br/>
            <form:input path="lastaccess" placeholder="lastaccess" /><br/>
            <form:input path="lastlogin" placeholder="lastlogin" /><br/>
            <form:input path="currentlogin" placeholder="currentlogin" /><br/>
            <form:input path="picture" placeholder="picture" /><br/>
            <form:input path="description" placeholder="description" /><br/>
            <form:input path="timecreated" placeholder="timecreated" /><br/>
            <form:input path="timemodified" placeholder="timemodified" /><br/>
            <form:input path="imagealt" placeholder="imagealt" /><br/>
            <form:input path="lastnamephonetic" placeholder="lastnamephonetic" /><br/>
            <form:input path="firstnamephonetic" placeholder="firstnamephonetic" /><br/>
            <form:input path="middlename" placeholder="middlename" /><br/>
            <form:input path="alternatename" placeholder="alternatename" /><br/>
            <form:select path="id_role" >
                <option>Role</option>
                <c:forEach items="${listRole}" var="listData" >
                    <option value="${listData.id}">${listData.name}</option>
                </c:forEach>
            </form:select>
            
            <input type="submit" value="Simpan"/>
        </form:form>
    </body>
</html>
