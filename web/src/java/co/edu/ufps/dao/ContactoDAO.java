package co.edu.ufps.dao;

import co.edu.ufps.connection.conexion;
import co.edu.ufps.dto.Contacto;
import java.sql.*;
import java.util.Date;
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
    //solo un 

    public boolean registrarContacto(Contacto contacto) {
        boolean rs = false;
        Date date = new Date();
        String fecha = date.getYear() + 1900 + "-" + (date.getMonth() + 1) + "-" + date.toGMTString().substring(0, 1);
        
        try {
            rs = s.execute("INSERT INTO `contacto`(`consecutivo`, `fecha`, `asesor`, `cto_nombres`, "
                    + "`cto_apellidos`, `cto_cc`, `cto_cargo`, `cto_cde`, `cto_direccion`, `cto_ciudad`, `cto_pais`, "
                    + "`cto_cecular`, `cto_fijo`, `cto_email`, `cto_email_masivo`, `cto_genero`, `cto_departamento`, "
                    + "`cto_notas`) VALUES (\'" + contacto.getConsecutivo() + "\', \'" + fecha + "\', \'" + contacto.getAsesor()
                    + "\', \'" + contacto.getCto_nombres() + "\', \'" + contacto.getCto_apellidos() + "\'," + " \'" + contacto.getCto_cc()
                    + "\', \'" + contacto.getCto_cargo() + "\', \'" + contacto.getCto_cde() + "\', \'" + contacto.getCto_direccion() + "\', \'"
                    + contacto.getCto_ciudad() + "\'," + " \'" + contacto.getCto_pais() + "\', \'" + contacto.getCto_celular() + "\', \'"
                    + contacto.getCto_fijo() + "\', \'" + contacto.getCto_email() + "\', \'" + contacto.getCto_email_masivo() + "\', \'"
                    + contacto.getCto_genero() + "\', \'" + contacto.getCto_departamento() + "\', \'" + contacto.getCto_notas() + "\'); ");
            return true;
        } catch (SQLException ex) {
            System.out.println(ex.getMessage());
        }
        
        return rs;
    }
    
    public boolean updateContacto(Contacto cont) {
        boolean respuesta = false;
        
        try {
            respuesta = s.execute("UPDATE `contacto` SET `cto_antiguedad_cargo`=\'" + cont.getCto_antiguedad_cargo() + "\',"
                    + "`cto_lugar_nacimiento`=\'" + cont.getCto_lugar_nacimiento() + "\',"
                    + "`cto_fecha_nacimiento`=\'" + cont.getCto_fecha_nacimiento() + "\',`cto_nivel_estudio`=\'" + cont.getCto_nivel_estudio()
                    + "\',`cto_discapacidad`=\'" + cont.getCto_discapacidad() + "\', "
                    + "`cto_etnia`=\'" + cont.getCto_etnia() + "\',`cto_condicion_desplazado`=\'" + cont.getCto_condicion_desplazado()
                    + "\', `cto_notas` = \'" + cont.getCto_notas() + "\' WHERE `cto_email` = \'" + cont.getCto_email() + "\';");
            return true;
            
        } catch (SQLException ex) {
            Logger.getLogger(ContactoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return respuesta;
    }

    //
    public List<Contacto> mostrarContacto(int cantidad) {
        int limite = cantidad + 10;
        
        List<Contacto> list = new ArrayList<>();
        ResultSet rs;
        try {
            rs = s.executeQuery("SELECT * FROM `contacto` order by cto_nombres asc limit " + cantidad + "," + limite + ";");
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
                        rs.getString("cto_notas"),
                        rs.getString("cto_cde"));
                list.add(contacto);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ContactoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return list;
    }

    //No tengo idea para que se creo esto...
    public List<Contacto> mostrarContactos() {
        List<Contacto> list = new ArrayList<>();
        ResultSet rs;
        try {
            rs = s.executeQuery("SELECT `cto_nombres`,`cto_apellidos`,`cto_cc`,`cto_cargo`,`cto_direccion`,`cto_ciudad`, `cto_pais`,"
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
        } catch (SQLException ex) {
            Logger.getLogger(ContactoDAO.class.getName()).log(Level.SEVERE, null, ex);
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
                        rs.getString("cto_notas"), rs.getString("cto_cde"));
                lista.add(contacto);
            }
        } catch (Exception e) {
        }
        
        return lista;
    }
    
    public boolean borrarContacto(String cto_cc) {
        boolean respuesta = false;
        
        try {
            respuesta = s.execute("DELETE FROM `contacto` WHERE `cto_cc` = \"" + cto_cc + "\";");
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(ContactoDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return respuesta;
    }

    //Inicio de busquedas.
    public Contacto buscarContacto(String tipoBusqueda, String valorBuscado) {
        Contacto aux;
        aux = null;
        try {
            ResultSet rs = null;
            if (tipoBusqueda.equals("cedula")) {
                rs = s.executeQuery("SELECT * FROM `contacto` WHERE `cto_cc` like \"" + valorBuscado + "%\" order by `cto_cc`;");
            } else {
                rs = s.executeQuery("SELECT * FROM `contacto` WHERE `cto_email` like \"" + valorBuscado + "%\" order by `cto_email`;");
            }
            
            rs.next();
            aux = new Contacto(rs.getString("consecutivo"), rs.getString("fecha"), rs.getString("asesor"), rs.getString("cto_nombres"),
                    rs.getString("cto_apellidos"), rs.getString("cto_cc"), rs.getString("cto_cargo"), rs.getString("cto_direccion"),
                    rs.getString("cto_ciudad"), rs.getString("cto_pais"), rs.getString("cto_fijo"), rs.getString("cto_cecular"),
                    rs.getString("cto_email"), rs.getString("cto_email_masivo"), rs.getString("cto_genero"), rs.getString("cto_departamento"),
                    rs.getString("cto_notas"), rs.getString("cto_cde"));
            return aux;
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
