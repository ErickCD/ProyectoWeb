/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.ufps.dao;

import co.edu.ufps.connection.conexion;
import co.edu.ufps.dto.Servicio;
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
public class ServicioDAO {

    private Statement s = null;
    private conexion con = null;

    public ServicioDAO() {
        try {
            con = new conexion();
            // Preparamos la consulta
            s = con.getConnection().createStatement();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    // para listar todos los servicios que estan en la base de datos
    public List<Servicio> listarServicios() {
        ResultSet rs = null;
        List<Servicio> l = new ArrayList<>();

        try {
            rs = s.executeQuery("SELECT * FROM `Servicio`;");

            while (rs.next()) {
                l.add(new Servicio(rs.getInt("ser_id"), rs.getString("ser_servicio")));
            }

            return l;
        } catch (SQLException ex) {
            Logger.getLogger(ServicioDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        //cualquier problema devuelve la vista vacia
        return l;
    }

    // guardar el servicio en la base de datos
    public void addServicio(String servicio) {
        System.out.println("INSERT INTO `Servicio`(`ser_servicio`) VALUES (\'" + servicio + "\');");
        try {
            boolean respuesta = s.execute("INSERT INTO `Servicio`(`ser_servicio`) VALUES (\'" + servicio + "\');");
        } catch (SQLException ex) {
            Logger.getLogger(ServicioDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
