<%@ page import="model.Post" %>
<%@ page import="model.User" %>
<%@ page import="manager.UserManager" %><%--
  Created by IntelliJ IDEA.
  User: User
  Date: 20/04/2020
  Time: 5:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>post</title>
</head>
<body>
<%
    Post post = (Post) request.getAttribute("post");
    UserManager userManager = new UserManager();
    User currentUser = userManager.getUserById((int) post.getAuthorId());
//    List<User> users = (List<User>) request.getAttribute("allUsers");
    if (post != null) {
%>
<p><%= post.getTitle() %> <br><br> <%= post.getText() %> <br><br> <%= post.getCategory() %> <br><br></p>
<% } %>
<br><br><br>

by: <%= currentUser.getName() + " " + currentUser.getSurname() %>
</body>
</html>
