package servlet;

import javafx.geometry.Pos;
import main.java.servlet.LoginServlet;
import manager.PostManager;
import manager.UserManager;
import model.Category;
import model.Post;
import model.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.Enumeration;
import java.util.List;

@WebServlet(urlPatterns = "/post")
public class PostServlet extends HttpServlet {
//    public static User user = LoginServlet.currentUser;

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String title = req.getParameter("title");
        String text = req.getParameter("text");
        String category = req.getParameter("category");
        long authorId = Long.parseLong(req.getParameter("authorId"));

        Post post = new Post();
        post.setTitle(title);
        post.setText(text);
        post.setCategory(Category.valueOf(category.toUpperCase()));
        post.setAuthorId(authorId);

        PostManager postManager = new PostManager();
//        postManager.addPost(post);
//        req.setAttribute("post", post);

        List<Post> allPosts = postManager.getAllPosts();
        req.setAttribute("allPosts", allPosts);
        req.getRequestDispatcher("index.jsp").forward(req, resp);
    }

}
