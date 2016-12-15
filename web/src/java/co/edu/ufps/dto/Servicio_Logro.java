/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.ufps.dto;

import java.util.List;

/**
 *
 * @author Manuel Florez
 */
public class Servicio_Logro {
    
    private Servicio myServicio;
    private List<Logro> myLogros;

    public Servicio_Logro(Servicio myServicio, List<Logro> myLogros) {
        this.myServicio = myServicio;
        this.myLogros = myLogros;
    }

    public Servicio_Logro() {
    }

    public Servicio getMyServicio() {
        return myServicio;
    }

    public void setMyServicio(Servicio myServicio) {
        this.myServicio = myServicio;
    }

    public List<Logro> getMyLogros() {
        return myLogros;
    }

    public void setMyLogros(List<Logro> myLogros) {
        this.myLogros = myLogros;
    }
    
}
