package co.edu.ufps.dao;

import co.edu.ufps.connection.conexion;
import co.edu.ufps.dto.Contacto;
import java.sql.*;
import java.util.List;

/**
 *
 * @author Manuel FLorez
 */
public class ContactoDAO {

    private Statement s = null;
    
    public ContactoDAO() {
        try {
            conexion con = new conexion();
            // Preparamos la consulta
             s = con.getConnection().createStatement();
        } catch (Exception e) {

        }
    }

    public String registrar(Contacto c) throws SQLException {
        int var;
        
        var = s.executeUpdate("insert into ");
        
        return null;
    }

    public List listar() {
        return null;
    }

    public Contacto consultar(String id) {
        return null;
    }

}
