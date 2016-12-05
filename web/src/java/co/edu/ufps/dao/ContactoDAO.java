package co.edu.ufps.dao;

import co.edu.ufps.connection.conexion;
import co.edu.ufps.dto.Contacto;
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

    public boolean registrarContacto(String consecutivo, String fecha, String asesor, String cto_nombres,
            String cto_apellidos, String cto_cc, String cto_cargo, String cto_cde, String cto_direccion,
            String cto_ciudad, String cto_pais, String cto_cecular, String cto_fijo, String cto_email,
            String cto_email_masivo, String cto_genero, String cto_departamento, String cto_notas) throws SQLException {
        boolean rs = false;

        rs = s.execute("INSERT INTO `contacto`(`consecutivo`, `fecha`, `asesor`, `cto_nombres`, "
                + "`cto_apellidos`, `cto_cc`, `cto_cargo`, `cto_cde`, `cto_direccion`, `cto_ciudad`, `cto_pais`, "
                + "`cto_cecular`, `cto_fijo`, `cto_email`, `cto_email_masivo`, `cto_genero`, `cto_departamento`, "
                + "`cto_notas`) VALUES (\'" + consecutivo + "\', \'" + fecha + "\', \'" + asesor + "\', \'"
                + cto_nombres + "\', \'" + cto_apellidos + "\'," + " \'" + cto_cc + "\', \'" + cto_cargo + "\', \'"
                + cto_cde + "\', \'" + cto_direccion + "\', \'" + cto_ciudad + "\',"
                + " \'" + cto_pais + "\', \'" + cto_cecular + "\', \'" + cto_fijo + "\', \'" + cto_email + "\', \'"
                + cto_email_masivo + "\', \'" + cto_genero + "\', \'" + cto_departamento + "\', \'" + cto_notas + "\'); ");
        return rs;
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
    public List<Contacto> mostrarContacto(int cto_cc) throws SQLException {
        List<Contacto> list = new ArrayList<>();
        ResultSet rs = s.executeQuery("SELECT `cto_nombres`, `cto_apellidos`, `cto_cargo`, `cto_cc`,  `cto_direccion`, `cto_ciudad`,"
                + " `cto_departamento`, `cto_fijo`, `cto_cecular`, `cto_email`, `cto_genero` FROM `contacto` WHERE `cto_cc` = \"620403\";"
                + cto_cc + ";");

        Contacto contacto = null;
        while (rs.next()) {
            contacto = new Contacto(
                    rs.getString("consecutivo"),
                    rs.getString("fecha"),
                    rs.getString("asesor"),
                    rs.getString("cto_nombres"),
                    rs.getString("cto_apellidos"),
                    rs.getString("cto_cc"),
                    rs.getString("cto_cargo"),
                    rs.getString("cto_direccion"),
                    rs.getString("cto_ciudad"),
                    rs.getString("cto_pais"),
                    rs.getString("cto_fijo"),
                    rs.getString("cto_cecular"),
                    rs.getString("cto_email"),
                    rs.getString("cto_email_masivo"),
                    rs.getString("cto_genero"),
                    rs.getString("cto_departamento"),
                    rs.getString("cto_notas"));
            list.add(contacto);
        }

        return list;
    }

    public List<Contacto> mostrarContactos() throws SQLException {
        List<Contacto> list = new ArrayList<>();
        ResultSet rs = s.executeQuery("SELECT `cto_nombres`,`cto_apellidos`,`cto_cc`,`cto_cargo`,`cto_direccion`,`cto_ciudad`, `cto_pais`,"
                + " `cto_cecular`, `cto_fijo`, `cto_email`, `cto_email_masivo`, `cto_genero`,`cto_departamento` FROM `contacto`;");

        while (rs.next()) {
            Contacto cont = new Contacto(
                    rs.getString("cto_nombres"),
                    rs.getString("cto_apellidos"),
                    rs.getString("cto_cc"),
                    rs.getString("cto_cargo"),
                    rs.getString("cto_direccion"),
                    rs.getString("cto_ciudad"),
                    rs.getString("cto_pais"),
                    rs.getString("cto_cecular"),
                    rs.getString("cto_fijo"),
                    rs.getString("cto_email"),
                    rs.getString("cto_email_masivo"),
                    rs.getString("cto_genero"),
                    rs.getString("cto_departamento")
            );

            list.add(cont);
        }

        return list;
    }

    public ArrayList mostrarFiltroContactos() throws SQLException {
        ArrayList lista = new ArrayList();

        ResultSet rs = s.executeQuery("SELECT * FROM `contacto`;");
        Object temp[] = new Object[3];

        Contacto contacto = null;
        while (rs.next()) {
            contacto = new Contacto(rs.getString("consecutivo"), rs.getString("fecha"), rs.getString("asesor"), rs.getString("cto_nombres"),
                    rs.getString("cto_apellidos"), rs.getString("cto_cc"), rs.getString("cto_cargo"), rs.getString("cto_direccion"),
                    rs.getString("cto_ciudad"), rs.getString("cto_pais"), rs.getString("cto_fijo"), rs.getString("cto_celular"),
                    rs.getString("cto_email"), rs.getString("cto_email_masivo"), rs.getString("cto_genero"), rs.getString("cto_departamento"),
                    rs.getString("cto_notas"));
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
