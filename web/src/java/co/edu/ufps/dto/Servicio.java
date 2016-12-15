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
public class Servicio {
    
    private int id;
    private String nombre;

    public Servicio(int id, String nombre) {
        this.id = id;
        this.nombre = nombre;
    }

    public Servicio() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    
}
