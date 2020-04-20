<%-- include header, all links and nav bar --%>
<jsp:include page="header.jsp" />

<p class="animText">Don't forget to fill all lines...</p>
<div id="main">
    <form action="/register" method="post" autocomplete="off">
        <input type="text" name="name" placeholder="Name"><br>
        <input type="text" name="surname" placeholder="Surname"><br>
        <input type="text" name="email" placeholder="Email"><br>
        <input type="password" name="password" placeholder="Password"><br>
        <input type="submit" id="reg" value="Register">
    </form>
</div>

<jsp:include page="footer.jsp" />