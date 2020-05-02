<%@ page import="model.Post" %>
<%@ page import="java.util.List" %>
<%@ page import="manager.UserManager" %>
<%@ page import="model.User" %>
<jsp:include page="header.jsp"/>


<section>
<%--    <%--%>
<%--        List<Post> posts = (List<Post>) request.getAttribute("allPosts");--%>
<%--        for (Post post : posts) {--%>
<%--            UserManager userManager = new UserManager();--%>
<%--            User user = userManager.getUserById((int) post.getAuthorId());--%>
<%--    %>--%>
<%--        <div class="post">--%>
<%--            <p><%= post.getTitle() %></p> <br>--%>
<%--            <p><%= post.getText() %></p> <br>--%>
<%--            <p><%= post.getCategory() %></p> <br>--%>
<%--            <p><%= user.getName() + " " + user.getSurname() %></p> <br>--%>
<%--        </div>--%>
<%--    <% } %>--%>
</section>


<jsp:include page="footer.jsp"/>