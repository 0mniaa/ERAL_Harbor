import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Scanner;
public class connection{
<<<<<<< HEAD
    private static String url = "jdbc:mysql://localhost:3306/Earl_Harbor";
    private static String user = "root";
    private static String pass = "12345";
=======
    private static final String url = "jdbc:mysql://localhost:3306/Earl_Harbor";
    private static final String user = "root";
    private static final String pass = "12345";
>>>>>>> b71398af782043a5808f5813842a7e7d0403f7ac
    public static Connection connect() {
        try {
            return DriverManager.getConnection(url, user, pass);
        } catch (SQLException e) {
            return null;
        }
    }
    public static void login() {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter username: ");
        String name = sc.nextLine();
        System.out.print("Enter password: ");
        String pass = sc.nextLine();
        sc.close();
        String query = "SELECT * FROM user WHERE username='"+name+"'AND password='"+pass+"'";
        Connection conn = connect();
        if (conn == null) {
            System.err.println("Failed to connect to the database.");
            return;
        }
        try (Statement statement = conn.createStatement()) {
            ResultSet rs = statement.executeQuery(query);
            if (rs.next()) {
                System.out.println("Login successful! Welcome, " + name);
            } else {
                System.out.println("Invalid username or password.");
            }
        } catch (SQLException e) {
            System.err.println("Error during login: " + e.getMessage());
        }
    }
    public static void main(String[] args) {
        login();
    }
}

