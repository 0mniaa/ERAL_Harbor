import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Scanner;
public class connection{
    private static final String url = "jdbc:mysql://localhost:3306/Earl_Harbor";
    private static final String user = "root";
    private static final String pass = "12345";
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
        String query = "SELECT * FROM user WHERE username = ? AND password = ?";
        Connection conn = connect();
        if (conn == null) {
            System.err.println("Failed to connect to the database.");
            return;
        }
        try (PreparedStatement statement = conn.prepareStatement(query)) {
            statement.setString(1, name);
            statement.setString(2, pass);
            ResultSet rs = statement.executeQuery();
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
