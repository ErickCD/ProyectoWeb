package co.edu.ufps.dao;

import co.edu.ufps.connection.conexion;
import co.edu.ufps.dto.Contacto;
import java.sql.*;
import java.util.List;

/**
 *
 * @author Clair
 */
public class ContactoDAO {

    private Statement s = null;
    private conexion con = null;

    public ContactoDAO() {
        try {
            con = new conexion();
            // Preparamos la consulta
            s = con.getConnection().createStatement();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public boolean registrarContacto(int id, String cto_nombres, String cto_apellidos, String cto_cc,
            String cto_cargo, String cto_direccion, String cto_ciudad, String cto_pais, String cto_fijo,
            String cto_celular, String cto_email, String cto_email_masivo, String cto_genero,
            String cto_departamento) throws SQLException {
        boolean rs = false;

        rs = s.execute("INSERT INTO `empresarial`.` contacto` (`cto_id`, `cto_nombres`,"
                + " `cto_apellidos`, `cto_cc`, `cto_cargo`, `cto_direccion`, `cto_ciudad`, `cto_pais`,"
                + " `cto_celular`, `cto_fijo`, `cto_email`, `cto_email_masivo`, `cto_genero`,"
                + " `cto_departamento`) VALUES (\'" + id + "\', \'" + cto_nombres + "\', \'" + cto_apellidos + "\',"
                + " \'" + cto_cc + "\', \'" + cto_cargo + "\', \'" + cto_direccion + "\', \'" + cto_ciudad + "\',"
                + " \'" + cto_pais + "\', \'" + cto_celular + "\', \'" + cto_fijo + "\', \'" + cto_email + "\', \'"
                + cto_email_masivo + "\', \'" + cto_genero + "\', \'" + cto_departamento + "\'); ");
        return rs;
    }

    public void registrarEmpresa(int cto_id, int cto_antiguedad_cargo, String cto_lugar_nacimiento, java.util.Date cto_fecha_nacimiento,
            String cto_nivel_estudio, String cto_discapacidad, String cto_cde, String cto_etnia,
            String cto_condicion_desplazado) throws SQLException {

        int rs = s.executeUpdate("UPDATE `empresarial`.` contacto` SET `cto_antiguedad_cargo`=\'" + cto_antiguedad_cargo + "\',"
                + " `cto_lugar_nacimiento`=\'" + cto_fecha_nacimiento + "\', `cto_fecha_nacimiento`=\'" + cto_fecha_nacimiento + "\',"
                + " `cto_nivel_estudio`=\'" + cto_nivel_estudio + "\', `cto_discapacidad`=\'" + cto_discapacidad + "\', `cto_cde`=\'" + cto_cde + "\',"
                + " `cto_etnia`=\'" + cto_etnia + "\', `cto_condicion_desplazado`=\'" + cto_condicion_desplazado + "\' WHERE `cto_id`=\'" + cto_id + "\';");
    }

    //
    public List mostrarContacto(int cto_id) throws SQLException {
        List list = null;
        list = (List) s.executeQuery("SELECT * FROM ` contacto` where cto_id = " + cto_id + ";");

        return list;
    }

    public List mostrarContactos() throws SQLException {
        List list = null;
        list = (List) s.executeQuery("select * from ` contacto`;");

        return list;
    }
}
