package co.edu.ufps.dao;

import co.edu.ufps.connection.conexion;
import co.edu.ufps.dto.Contacto;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

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

    public boolean registrarContacto(Contacto contacto) {
        boolean rs = false;

        try {
            rs = s.execute("INSERT INTO `contacto`(`consecutivo`, `fecha`, `asesor`, `cto_nombres`, "
                    + "`cto_apellidos`, `cto_cc`, `cto_cargo`, `cto_cde`, `cto_direccion`, `cto_ciudad`, `cto_pais`, "
                    + "`cto_cecular`, `cto_fijo`, `cto_email`, `cto_email_masivo`, `cto_genero`, `cto_departamento`, "
                    + "`cto_notas`) VALUES (\'" + contacto.getConsecutivo() + "\', \'" + "2016-12-01" + "\', \'" + contacto.getAsesor()
                    + "\', \'" + contacto.getCto_nombres() + "\', \'" + contacto.getCto_apellidos() + "\'," + " \'" + contacto.getCto_cc()
                    + "\', \'" + contacto.getCto_cargo() + "\', \'" + contacto.getCto_cde() + "\', \'" + contacto.getCto_direccion() + "\', \'"
                    + contacto.getCto_ciudad() + "\'," + " \'" + contacto.getCto_pais() + "\', \'" + contacto.getCto_celular() + "\', \'"
                    + contacto.getCto_fijo() + "\', \'" + contacto.getCto_email() + "\', \'" + contacto.getCto_email_masivo() + "\', \'"
                    + contacto.getCto_genero() + "\', \'" + contacto.getCto_departamento() + "\', \'" + contacto.getCto_notas() + "\'); ");
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }

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
    public List<Contacto> mostrarContacto(int cantidad) throws SQLException {
        int limite = cantidad + 10;

        List<Contacto> list = new ArrayList<>();
        ResultSet rs = s.executeQuery("SELECT * FROM `contacto` order by cto_nombres asc limit " + cantidad + "," + limite + ";");

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

    //No tengo idea para que se creo esto...
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
                    rs.getString("cto_departamento"));

            list.add(cont);
        }

        return list;
    }

    public List<Contacto> mostrarFiltroContactos(int cantidad) {
        ArrayList lista = new ArrayList();
        try {
            int limite = cantidad + 10;
            ResultSet rs = s.executeQuery("SELECT * FROM `contacto`order by cto_nombres asc limit " + cantidad + "," + limite + ";");

            Contacto contacto = null;
            while (rs.next()) {
                contacto = new Contacto(rs.getString("consecutivo"), rs.getString("fecha"), rs.getString("asesor"), rs.getString("cto_nombres"),
                        rs.getString("cto_apellidos"), rs.getString("cto_cc"), rs.getString("cto_cargo"), rs.getString("cto_direccion"),
                        rs.getString("cto_ciudad"), rs.getString("cto_pais"), rs.getString("cto_fijo"), rs.getString("cto_cecular"),
                        rs.getString("cto_email"), rs.getString("cto_email_masivo"), rs.getString("cto_genero"), rs.getString("cto_departamento"),
                        rs.getString("cto_notas"));
                lista.add(contacto);
            }
        } catch (Exception e) {
        }

        return lista;
    }

    public boolean borrarContacto(String cto_cc) throws SQLException {
        boolean respuesta = false;
        respuesta = s.execute("DELETE FROM `contacto` WHERE `cto_cc` = \"" + cto_cc + "\";");

        return respuesta;
    }

    //Inicio de busquedas.
    public Contacto busquedaCC(Contacto contact) {
        Contacto aux = null;
        try {
            ResultSet rs = s.executeQuery("SELECT * FROM `contacto` WHERE `cto_cc` = \'" + contact.getCto_cc() + "\';");
            rs.next();
            aux = new Contacto(rs.getString("consecutivo"), rs.getString("fecha"), rs.getString("asesor"), rs.getString("cto_nombres"),
                    rs.getString("cto_apellidos"), rs.getString("cto_cc"), rs.getString("cto_cargo"), rs.getString("cto_direccion"),
                    rs.getString("cto_ciudad"), rs.getString("cto_pais"), rs.getString("cto_fijo"), rs.getString("cto_cecular"),
                    rs.getString("cto_email"), rs.getString("cto_email_masivo"), rs.getString("cto_genero"), rs.getString("cto_departamento"),
                    rs.getString("cto_notas"));
        } catch (SQLException ex) {
            Logger.getLogger(ContactoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return null;
    }
    //Fin de busquedas.

    public int numeroConsecutivoContacto() {
        try {
            ResultSet rs = s.executeQuery("SELECT  MAX(`cto_id`) AS `cto_id` FROM `contacto` ;");
            rs.next();
            return rs.getInt("cto_id");
        } catch (SQLException e) {

        }
        return 0;
    }

}
