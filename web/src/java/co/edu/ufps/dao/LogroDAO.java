/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.ufps.dao;

import co.edu.ufps.connection.conexion;
import co.edu.ufps.dto.Logro;
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
public class LogroDAO {

    private Statement s = null;
    private conexion con = null;

    public LogroDAO() {
        try {
            con = new conexion();
            // Preparamos la consulta
            s = con.getConnection().createStatement();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    //lista todos los logros de la base de datos
    public List<Logro> listarLogros() {
        List<Logro> l = new ArrayList<>();
        ResultSet rs = null;

        try {
            rs = s.executeQuery("SELECT * FROM  `Logro`;");

            while (rs.next()) {
                //Lista y adhiere los logros
                l.add(new Logro(rs.getInt("log_id"), rs.getString("Log_logro")));
            }
            return l;
        } catch (SQLException ex) {
            Logger.getLogger(LogroDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return l;
    }

    //añadir el logro a la base de datos
    public void addLogro(String logro) {
        System.out.println("INSERT INTO `Logro`(`Log_logro`) VALUES (\'" + logro + "\');");
        try {
            boolean respuesta = s.execute("INSERT INTO `Logro`(`Log_logro`) VALUES (\'" + logro + "\');");
        } catch (SQLException ex) {
            Logger.getLogger(LogroDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        System.out.println("----------------------------------------------- " + logro);
    }

}
