import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Scanner;
public class connection {
    private static final String URL = "jdbc:mysql://localhost:3306/Eral_Harbor";
    private static final String USER = "root";
    private static final String PASS = "12345";
    public static Connection connect() throws SQLException {
        try {
            return DriverManager.getConnection(URL, USER, PASS);
        } catch (SQLException e) {
            throw e;
        }
    }
    public static void login() {
        Scanner sc = new Scanner(System.in);
        System.out.print("enter username: ");
        String name = sc.nextLine();
        System.out.print("enter password: ");
        String pass = sc.nextLine();
        sc.close();
        String query = "SELECT * FROM user WHERE username = ? AND password = ?";
        try (Connection conn = connect();
             PreparedStatement statment = conn.prepareStatement(query)) {
                statment.setString(1, name);
                statment.setString(2, pass);
            ResultSet rs = statment.executeQuery();
            if (rs.next()) {
                System.out.println("login successful! welcome, " + name);
            } else {
                System.out.println("invalid username or password.");
            }
        } catch (SQLException e) {
            System.err.println("error: " + e.getMessage());
        }
    }
    public static void main(String[] args) {
        login();
    }
}
