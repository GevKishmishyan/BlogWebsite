<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 20/04/2020
  Time: 10:58 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="author" content="Adtile">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <link rel="stylesheet" href="style/fixed-nav/css/styles.css">
    <!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <link rel="stylesheet" href="style/fixed-nav/css/ie.css">
    <![endif]-->
    <script src="style/fixed-nav/js/responsive-nav.js"></script>
    <title>Blog</title>
<%--    <link rel="stylesheet" href="style/index.css">--%>
</head>
<body>
<header>
    <a href="index.jsp" class="logo" data-scroll>
        <img src="photos/blogicon.png" alt="blogicon" width="40" height="40" style="padding-top: 15%;">
    </a>
    <nav class="nav-collapse">
        <ul>
            <li class="menu-item"><a href="index.jsp" data-scroll>Home</a></li>
            <li class="menu-item"><a href="blog.jsp" data-scroll>Blog</a></li>
            <li class="menu-item"><a href="login.jsp" data-scroll>Login</a></li>
            <li class="menu-item"><a href="register.jsp" data-scroll>Register</a></li>
        </ul>
    </nav>
</header>