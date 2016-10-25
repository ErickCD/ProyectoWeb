package co.edu.ufps.dao;

import co.edu.ufps.connection.conexion;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author Clair
 */
public class constitucionLegalDAO {

    private Statement s = null;
    private conexion con = null;

    public constitucionLegalDAO() {
        try {
            con = new conexion();
            // Preparamos la consulta
            s = con.getConnection().createStatement();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public boolean insertarConstituciónLegal(String nuevaConstitucion) throws SQLException {
        boolean respuesta = false;

        respuesta = s.execute("INSERT INTO `ufps_60`.`ConstitucionLegal` (`constitucionLegal_id`, `constitucionLegal_tipoConstitucion`) "
                + "VALUES ('', \'" + nuevaConstitucion + "\');");

        return respuesta;
    }

    public String obtenerIndiceConstitucionLegal(String nombreConstitucionLegal) throws SQLException {
        String respuesta = "";
        ResultSet rs = s.executeQuery("SELECT * FROM `ConstitucionLegal` WHERE `constitucionLegal_tipoConstitucion` = \""
                + nombreConstitucionLegal + "\";");
        if (rs.next()) {
            respuesta = rs.getString("constitucionLegal_id");
        }

        return respuesta;
    }

    public boolean eliminarConstitucionLegal(String nombreConstitucionLegal) throws SQLException {
        boolean respuesta = false;
        respuesta = s.execute("DELETE FROM `ConstitucionLegal` WHERE `constitucionLegal_tipoConstitucion` = \""
                + nombreConstitucionLegal + "\";");
        return respuesta;
    }
    
    public ArrayList boxConstituciónLegal() throws SQLException {
        ArrayList lista = new ArrayList();
        ResultSet rs = s.executeQuery("SELECT * FROM `ConstitucionLegal`");
        
        while (rs.next()) {
            lista.add(rs.getString("constitucionLegal_tipoConstitucion"));
        }

        return lista;
    }
}
