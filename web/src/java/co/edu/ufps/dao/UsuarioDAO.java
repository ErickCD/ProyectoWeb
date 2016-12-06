package co.edu.ufps.dao;

import co.edu.ufps.connection.conexion;
import co.edu.ufps.dto.Usuario;
import java.sql.*;

/**
 *
 * @author manue
 */
public class UsuarioDAO {

    public UsuarioDAO() {
    }

    public String validarUsuario(Usuario usuario) {
        try {
            String respuesta = null;
            conexion con = new conexion();
            // Preparamos la consulta
            Statement s = con.getConnection().createStatement();
            ResultSet rs = s.executeQuery("SELECT * FROM usuario WHERE password=\'"+usuario.getPassword()+"\' and nombre=\'" + usuario.getNombre()+ "\'");

            Usuario aux = null;

            while (rs.next()) {
                aux = new Usuario(
                        rs.getString("nombre"),
                        rs.getString("password"),
                        rs.getString("user")
                );
            }

            if ( aux == null ) {
                respuesta = " No se encontro una coincidencia con este Asesor en la base de datos ";
            }else{
                usuario.setNombre(aux.getNombre());
                usuario.setPassword(aux.getPassword());
                usuario.setUser(aux.getUser());
            }
            
            
            s.close();
            rs.close();
            con.cerrarConnection();
            return respuesta;
        } catch (SQLException e) {
            System.out.println(e.getMessage());
            return " Lo sentiomos en estos momentos no podemos aceder a la base de datos,"
                    + "comunicate con tu administrador ...." + e.getMessage();
        }
    }

}
