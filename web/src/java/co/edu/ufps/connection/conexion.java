package co.edu.ufps.connection;

import java.sql.*;

/**
 *
 * @author Manuel Florez
 */
public class conexion {

    public Connection getConnection() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(url, user, password);
        } catch (ClassNotFoundException e) {
            System.out.println("Error de Driver");
        } catch (SQLException e2) {
            System.out.println("Un error con la base de datos");
        }
        return this.con;
    }

    public void cerrarConnection() throws SQLException {
        if (this.con != null) {
            this.con.close();
        }
    }

    public conexion() {
    }

    private final String url = "jdbc:mysql://sandbox2.ufps.edu.co/ufps_60";
    private final String user = "ufps_60";
    private final String password = "ufps_g6";
    private Connection con = null;

}
