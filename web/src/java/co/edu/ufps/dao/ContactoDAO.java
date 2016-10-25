package co.edu.ufps.dao;

import co.edu.ufps.connection.conexion;
import java.sql.*;
import java.util.ArrayList;
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

    public void registrarContacto(String cto_nombres, String cto_apellidos, String cto_cc,
            String cto_cargo, String cto_direccion, String cto_ciudad, String cto_pais, String cto_fijo,
            String cto_celular, String cto_email, String cto_email_masivo, String cto_genero,
            String cto_departamento) throws SQLException {
        boolean rs = false;

        rs = s.execute("INSERT INTO ` contacto` (`cto_id`, `cto_nombres`,"
                + " `cto_apellidos`, `cto_cc`, `cto_cargo`, `cto_direccion`, `cto_ciudad`, `cto_pais`,"
                + " `cto_cecular`, `cto_fijo`, `cto_email`, `cto_email_masivo`, `cto_genero`,"
                + " `cto_departamento`) VALUES ('', \'" + cto_nombres + "\', \'" + cto_apellidos + "\',"
                + " \'" + cto_cc + "\', \'" + cto_cargo + "\', \'" + cto_direccion + "\', \'" + cto_ciudad + "\',"
                + " \'" + cto_pais + "\', \'" + cto_celular + "\', \'" + cto_fijo + "\', \'" + cto_email + "\', \'"
                + cto_email_masivo + "\', \'" + cto_genero + "\', \'" + cto_departamento + "\'); ");
    }

    public void datosContactoEmpresa(int cto_id, int cto_antiguedad_cargo, String cto_lugar_nacimiento, java.util.Date cto_fecha_nacimiento,
            String cto_nivel_estudio, String cto_discapacidad, String cto_cde, String cto_etnia,
            String cto_condicion_desplazado) throws SQLException {

        int rs = s.executeUpdate("UPDATE ` contacto` SET `cto_antiguedad_cargo`=\'" + cto_antiguedad_cargo + "\',"
                + " `cto_lugar_nacimiento`=\'" + cto_fecha_nacimiento + "\', `cto_fecha_nacimiento`=\'" + cto_fecha_nacimiento + "\',"
                + " `cto_nivel_estudio`=\'" + cto_nivel_estudio + "\', `cto_discapacidad`=\'" + cto_discapacidad + "\', `cto_cde`=\'"
                + cto_cde + "\', `cto_etnia`=\'" + cto_etnia + "\', `cto_condicion_desplazado`=\'" + cto_condicion_desplazado
                + "\' WHERE `cto_id`=\'" + cto_id + "\';");
    }

    //
    public List mostrarContacto(int cto_cc) throws SQLException {
        List list = null;
        ResultSet rs = s.executeQuery("SELECT `cto_nombres`, `cto_apellidos`, `cto_cargo`, `cto_cc`,  `cto_direccion`, `cto_ciudad`,"
                + " `cto_departamento`, `cto_fijo`, `cto_cecular`, `cto_email`, `cto_genero` FROM `contacto` WHERE `cto_cc` = \"620403\";"
                + cto_cc + ";");

        while (rs.next()) {
            list.add(rs.getString("cto_nombres"));
            list.add(rs.getString("cto_apellidos"));
            list.add(rs.getString("cto_cargo"));
            list.add(rs.getString("cto_direccion"));
            list.add(rs.getString("cto_ciudad"));
            list.add(rs.getString("cto_pais"));
            list.add(rs.getString("cto_cecular"));
            list.add(rs.getString("cto_email"));
            list.add(rs.getString("cto_email_masivo"));
            list.add(rs.getString("cto_genero"));
            list.add(rs.getString("cto_departamento"));
        }

        return list;
    }

    public ArrayList mostrarContactos() throws SQLException {
        ArrayList list = new ArrayList();
        ResultSet rs = s.executeQuery("SELECT `cto_nombres`,`cto_apellidos`,`cto_cc`,`cto_cargo`,`cto_direccion`,`cto_ciudad`, `cto_pais`,"
                + " `cto_cecular`, `cto_fijo`, `cto_email`, `cto_email_masivo`, `cto_genero`,`cto_departamento` FROM `contacto`;");

        String array_temp[] = new String[13];
        while (rs.next()) {
            array_temp[0] = rs.getString("cto_nombres");
            array_temp[1] = rs.getString("cto_apellidos");
            array_temp[2] = rs.getString("cto_cc");
            array_temp[3] = rs.getString("cto_cargo");
            array_temp[4] = rs.getString("cto_direccion");
            array_temp[5] = rs.getString("cto_ciudad");
            array_temp[6] = rs.getString("cto_pais");
            array_temp[7] = rs.getString("cto_cecular");
            array_temp[8] = rs.getString("cto_fijo");
            array_temp[9] = rs.getString("cto_email");
            array_temp[10] = rs.getString("cto_email_masivo");
            array_temp[11] = rs.getString("cto_genero");
            array_temp[12] = rs.getString("cto_departamento");
            list.add(array_temp);
        }

        return list;
    }

    public ArrayList mostrarFiltroContactos() throws SQLException {
        ArrayList lista = new ArrayList();

        ResultSet rs = s.executeQuery("SELECT * FROM `contacto`;");
        Object temp[] = new Object[3];
        while (rs.next()) {
            temp[0] = String.valueOf(rs.getInt("cto_id"));
            temp[1] = rs.getString("cto_nombres");
            temp[2] = rs.getString("cto_apellidos");
            lista.add(temp);
        }

        return lista;
    }

    public boolean borrarContacto(String cto_cc) throws SQLException {
        boolean respuesta = false;
        respuesta = s.execute("DELETE FROM `contacto` WHERE `cto_cc` = \"" + cto_cc + "\";");

        return respuesta;
    }
}
