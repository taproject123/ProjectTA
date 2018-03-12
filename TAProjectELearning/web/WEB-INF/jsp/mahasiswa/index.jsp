<%-- 
    Document   : index.jsp
    Created on : Feb 24, 2018, 10:56:06 AM
    Author     : Sou
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet" type="text/css" />
<link href="<c:url value="/resources/css/bootstrap-responsive.min.css" />" rel="stylesheet" type="text/css" />
<link href="<c:url value="/resources/css/font-awesome.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/style.css" />" rel="stylesheet" type="text/css">
<link href="<c:url value="/resources/css/pages/signin.css" />" rel="stylesheet" type="text/css">
<link href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600" rel="stylesheet">
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Halaman Mahasiswa</title>
    </head>
    <body>
        <div class="navbar navbar-fixed-top">
            <div class="navbar-inner">
                <div class="container">
                    <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </a>
                    <a class="brand" href="index.htm">Good Learner</a>
                    <div class="nav-collapse">
                        <ul class="nav pull-right">
                            <li class="">						
                                <a href="signup.htm" class="">Tidak mempunyai akun?</a>
                            </li>
                            <li class="">						
                                <a href="index.html" class="">
                                    <i class="icon-chevron-left"></i>
                                    Kembali ke Beranda
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <h1>Hello ${username} Passsword anda ${password} anda sebagai ${role} (Mahasiswa)</h1>
        <p><a href="logout.htm">Log Out</a></p>
    </body>
</html>
