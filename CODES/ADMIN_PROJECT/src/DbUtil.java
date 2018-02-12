/*DbUtil.java is a class which establishes connection with the SQL database
 */
import java.sql.Connection;
import java.sql.DriverManager;

public class DbUtil {
	public static Connection conn = null;

	public static Connection getConnection()
    {
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            conn=DriverManager.getConnection("jdbc:mysql://www.papademas.net:3306/510labs?autoReconnect=true&useSSL=false","db510","510");
            System.out.println("connection successful");
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return conn;        
    }

}
