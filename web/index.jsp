<%@ page import="model.Post" %>
<%@ page import="java.util.List" %>
<%@ page import="manager.UserManager" %>
<%@ page import="model.User" %>
<%@ page import="manager.PostManager" %>
<jsp:include page="header.jsp"/>

<% List<Post> posts = (List<Post>) request.getAttribute("allPosts"); %>

<section>
    <%
        for (Post post : posts) {
            UserManager userManager = new UserManager();
            User currentUser = userManager.getUserById((int) post.getAuthorId());
    %>
    <div class="post">
        <%= post.getTitle() %> <br><br>
        <%= post.getText() %> <br><br>
        <%= post.getCategory() %> <br><br>
        <%= currentUser.getName() %> <br>
        <%= currentUser.getSurname() %> <br>
    </div>
    <% } %>
</section>


<jsp:include page="footer.jsp"/>