<%-- include header, all links and nav bar --%>
<jsp:include page="header.jsp" />
+
<p class="animText">Just fill in all lines correctly...</p>
<div id="main">
    <% if (request.getAttribute("message") != null) { %>
        <p style="color: red; text-align: center; margin-top: 0;"><%= request.getAttribute("message") %></p>
    <% } %>
    <form action="/login" method="post">
        <input type="text" name="email" placeholder="Email"><br>
        <input type="password" name="password" placeholder="Password"><br>
        <input type="submit" id="reg" value="Login">
    </form>
</div>

<jsp:include page="footer.jsp" />
