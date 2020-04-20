package manager;

import javafx.geometry.Pos;
import main.java.servlet.LoginServlet;
import model.Category;
import model.Post;
import model.User;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;

public class PostManager {

    private Connection connection;
    public static User user = LoginServlet.currentUser;

    public PostManager() {
        connection = main.java.db.DBConnectionProvider.getInstance().getConnection();
    }


    public void addPost(Post post) {
        try {
            Statement statement = connection.createStatement();
            String query = "INSERT INTO post(`title`, `text`, `category`, `authorId`)" +
                    " VALUES('" + post.getTitle() + "','" + post.getText() + "','" + post.getCategory() + "','" + user.getId() + "');";
            System.out.println("Executing the following statement ->" + query);
            statement.executeUpdate(query, Statement.RETURN_GENERATED_KEYS);
            ResultSet generatedKeys = statement.getGeneratedKeys();
            if (generatedKeys.next()) {
                int id = generatedKeys.getInt(1);
                post.setId(id);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public Post getPostById(int id) {
        String query = "SELECT * FROM post WHERE id = " + id;
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(query);
            if (resultSet.next()) {
                Post post = new Post();
                post.setId(resultSet.getInt(1));
                post.setTitle(resultSet.getString(2));
                post.setText(resultSet.getString(3));
                post.setCategory(Category.valueOf(resultSet.getString(4).toUpperCase()));
                post.setAuthorId(resultSet.getInt((int) user.getId()));
                return post;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public List<Post> getAllPosts() {
        String query = "SELECT * FROM post";
        List<Post> posts = new LinkedList<Post>();
        try {
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(query);
            while (resultSet.next()) {
                Post post = new Post();
                post.setId(resultSet.getInt(1));
                post.setTitle(resultSet.getString(2));
                post.setText(resultSet.getString(3));
                post.setCategory(Category.valueOf(resultSet.getString(4).toUpperCase()));
                post.setAuthorId(resultSet.getInt((int) user.getId()));
                posts.add(post);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return posts;
    }

    public void removePostById(int id) {
        String query = "DELETE FROM post WHERE id = " + id;
        try {
            Statement statement = connection.createStatement();
            statement.executeUpdate(query);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

}
