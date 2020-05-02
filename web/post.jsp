<%@ page import="model.Post" %>
<%@ page import="manager.UserManager" %>
<%@ page import="model.User" %><%-- include header, all links and nav bar --%>
<jsp:include page="header.jsp"/>
<section>
<%
    Post post = (Post) request.getAttribute("post");
    UserManager userManager = new UserManager();
    User currentUser = userManager.getUserById((int) post.getAuthorId());
    if (post != null) {
%>
<p><%= post.getTitle() %> <br><br> <%= post.getText() %> <br><br> <%= post.getCategory() %> <br><br></p>
<% } %>
<br><br><br>

by: <%= currentUser.getName() + " " + currentUser.getSurname() %>


</section>

<jsp:include page="footer.jsp"/>
