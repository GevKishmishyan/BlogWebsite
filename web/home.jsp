<%@ page import="model.User" %>
<%@ page import="java.util.List" %>
<%@ page import="model.Post" %><%--
  Created by IntelliJ IDEA.
  User: User
  Date: 20/04/2020
  Time: 1:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>admin</title>
    <link rel="stylesheet" href="style/home.css">
</head>
<body>
<div id="avatar">
    <img src="photos/avatar.png" alt="avatar">
</div>

<%
    User user = (User) request.getAttribute("name");
    List<User> users = (List<User>) request.getAttribute("allUsers");
    if (user != null) {
%>
<p><%= user.getName() %> <%= user.getSurname() %></p>
<% } %>
<hr>
<br>
<p>All Users List</p>
<table border="1">
    <tr id="line1">
        <td>Id</td>
        <td>Name</td>
        <td>Surname</td>
        <td>Email</td>
        <td>Delete</td>
    </tr>
        <% for (User user1 : users) { %>
    <tr>
        <td><%= user1.getId() %>
        </td>
        <td><%= user1.getName() %>
        </td>
        <td><%= user1.getSurname() %>
        </td>
        <td><%= user1.getEmail() %>
        </td>
        <td><a href="/removeUser?id=<%= user1.getId() %>">Delete</a></td>
    </tr>
        <% } %>


<%--<form action="/post" method="post">--%>
<%--    <input type="text" name="title" placeholder="Title"><br>--%>
<%--    <input type="text" name="text" placeholder="Text"><br>--%>
<%--    <input type="text" name="category" placeholder="Category"><br>--%>
<%--    <input type="submit" id="post" value="Post">--%>
<%--</form>--%>


<jsp:include page="footer.jsp" />
