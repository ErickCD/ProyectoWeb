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
public class EmpresaAdscrita {
    
    private String nombre_empresa;
    private String nombre_gerente;
    private String email;
    private String telefono;
    private String sitio_web;

    public EmpresaAdscrita() {
    }

    
    
    public EmpresaAdscrita(String nombre_empresa, String nombre_gerente, String email, String telefono, String sitio_web) {
        this.nombre_empresa = nombre_empresa;
        this.nombre_gerente = nombre_gerente;
        this.email = email;
        this.telefono = telefono;
        this.sitio_web = sitio_web;
    }

    public String getNombre_empresa() {
        return nombre_empresa;
    }

    public void setNombre_empresa(String nombre_empresa) {
        this.nombre_empresa = nombre_empresa;
    }

    public String getNombre_gerente() {
        return nombre_gerente;
    }

    public void setNombre_gerente(String nombre_gerente) {
        this.nombre_gerente = nombre_gerente;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getSitio_web() {
        return sitio_web;
    }

    public void setSitio_web(String sitio_web) {
        this.sitio_web = sitio_web;
    }
    
    
    
}
