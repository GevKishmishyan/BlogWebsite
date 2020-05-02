<%@ page import="model.Post" %>
<%@ page import="java.util.List" %>
<jsp:include page="header.jsp"/>


<section>

    <% List<Post> posts = (List<Post>) request.getAttribute("allPosts");

        for (Post post : posts) { %>
            <h1 style="color: #ca3716;"><%= post.getTitle() %></h1>
        <% } %>
</section>


<jsp:include page="footer.jsp"/>