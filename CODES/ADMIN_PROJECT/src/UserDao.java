/*UserDao.java is where the user can update add or delete the data from the mysql db
 */
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class UserDao {

    private Connection connection;

    public UserDao() {
        connection = DbUtil.getConnection();
    }

    public void addUser(User user) {
        try {
            PreparedStatement preparedStatement = connection
                    .prepareStatement("insert into course_project(projectname,projectstatus,courseid,url_description ) values (?, ?, ?, ? )");
            // Parameters start with 1
            preparedStatement.setString(1, user.getprojectname());
            preparedStatement.setString(2, user.getprojectstatus());
            preparedStatement.setString(3, user.getcourseid());
            preparedStatement.setString(4, user.geturl_description());
            preparedStatement.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void deleteUser(int projrctId) {
        try {
            PreparedStatement preparedStatement = connection
                    .prepareStatement("delete from course_project where projectid=?");
            // Parameters start with 1
            preparedStatement.setInt(1, projrctId);
            preparedStatement.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void updateUser(User user) {
        try {
            PreparedStatement preparedStatement = connection
                    .prepareStatement("update course_project set projectname=?, projectstatus=?, courseid=? , url_description=?"+
                            "where projectid=?");
            // Parameters start with 1
            preparedStatement.setString(1, user.getprojectname());
            preparedStatement.setString(2, user.getprojectstatus());
            preparedStatement.setString(3, user.getcourseid());
            preparedStatement.setString(4, user.geturl_description());
            preparedStatement.setInt(5, user.getProjectid());
            preparedStatement.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public List<User> getAllUsers() {
        List<User> users = new ArrayList<User>();
        try {
            Statement statement = connection.createStatement();
            ResultSet rs = statement.executeQuery("select * from course_project");
            while (rs.next()) {
                User user = new User();
                user.setProjectid(rs.getInt("projectid"));
                user.setprojectname(rs.getString("projectname"));
                user.setprojectstatus(rs.getString("projectstatus"));
                user.setcourseid(rs.getString("courseid"));
                user.seturl_description(rs.getString("url_description"));
                users.add(user);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return users;
    }

    public User getUserById(int projrctId) {
        User user = new User();
        try {
            PreparedStatement preparedStatement = connection.
                    prepareStatement("select * from course_project where projectid=?");
            preparedStatement.setInt(1, projrctId);
            ResultSet rs = preparedStatement.executeQuery();

            if (rs.next()) {
                user.setProjectid(rs.getInt("projectid"));
                user.setprojectname(rs.getString("projectname"));
                user.setprojectstatus(rs.getString("projectstatus"));
                user.setcourseid(rs.getString("courseid"));
                user.seturl_description(rs.getString("url_description"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return user;
    }
}