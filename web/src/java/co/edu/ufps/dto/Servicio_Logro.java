/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.ufps.dto;

/**
 *
 * @author Manuel Florez
 */
public class Servicio_Logro {
    
    private int id_servicio;
    private int id_logro;

    public Servicio_Logro(int id_servicio, int id_logro) {
        this.id_servicio = id_servicio;
        this.id_logro = id_logro;
    }

    public Servicio_Logro() {
    }

    public int getId_servicio() {
        return id_servicio;
    }

    public void setId_servicio(int id_servicio) {
        this.id_servicio = id_servicio;
    }

    public int getId_logro() {
        return id_logro;
    }

    public void setId_logro(int id_logro) {
        this.id_logro = id_logro;
    }
    
    
    
}
