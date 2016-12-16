/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.ufps.dao;

import co.edu.ufps.connection.conexion;
import co.edu.ufps.dto.EmpresaAdscrita;
import co.edu.ufps.dto.Logro;
import co.edu.ufps.dto.Servicio;
import co.edu.ufps.dto.Servicio_Logro;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Manuel Florez
 */
public class Servicio_LogroDAO {

    private Statement s = null;
    private conexion con = null;

    public Servicio_LogroDAO() {
        try {
            con = new conexion();
            // Preparamos la consulta
            s = con.getConnection().createStatement();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    //carga el Servicio_Logro asignado al ide de la empresa adscrita
    public List<Servicio_Logro> consulta(EmpresaAdscrita e) {
        List<Servicio_Logro> l = new ArrayList<>();
        List<Logro> logros = new ArrayList();
        ResultSet rs = null;
        
        try {
            rs = s.executeQuery("");
            
        } catch (SQLException ex) {
            Logger.getLogger(Servicio_LogroDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        Servicio ser = new Servicio(1, "Importación");
        logros.add(new Logro(1, "Logro Bronce"));
        logros.add(new Logro(2, "Logro Plata"));
        //carga un servicio y la lista con los logros que estan asignados
        l.add(new Servicio_Logro(ser, logros));
        return l;
    }

    //asignar en la tabla servicio_logro
    /**
     *
     * @param id_servicio id del servicio
     * @param id_logro id del logro
     * @param e Empresa Adscrita que se le asignara el servicio y el logro
     */
    public void addServicio_Logro(String id_servicio, String id_logro, EmpresaAdscrita e) {
        ResultSet rs = null;

        try {
            rs = s.executeQuery("SELECT `ads_id` FROM `Empresaads` WHERE ads_nombreEmpresa = \'" + e.getNombre_empresa() + "\';");
            rs.next();
            int ads_id = rs.getInt("ads_id");
            rs = s.executeQuery("select * from servicio_logro where emp_id = 1 and ser_id = 2  and  log_id = 3;");
            rs.next();
            String valor1 = rs.getString("emp_id"), valor2 = rs.getString("ser_id"), valor3 = rs.getString("log_id");

            if (!valor1.equals(ads_id) && !valor2.equals(id_servicio) && !valor3.equals(id_logro)) {
                boolean correcto = s.execute("INSERT INTO `Servicio_Logro`(`emp_id`, `ser_id`, `log_id`) VALUES (\'" + ads_id + "\', \'" + id_servicio + "\', \'" + id_logro + "\');");
            }
        } catch (SQLException ex) {
            Logger.getLogger(Servicio_LogroDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

}
