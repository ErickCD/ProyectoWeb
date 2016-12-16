/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.ufps.dto;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Manuel Florez
 */
public class Servicio_LogroDAO {

    public Servicio_LogroDAO() {
    }

    //carga el Servicio_Logro asignado al ide de la empresa adscrita
    public List<Servicio_Logro> consulta(EmpresaAdscrita e) {
        List<Servicio_Logro>l = new ArrayList<>();
        
        
        
        
        List<Logro>logros = new ArrayList();
        Servicio s = new Servicio(1, "Importación");
        logros.add(new Logro(1, "Logro Bronce"));
        logros.add(new Logro(2, "Logro Plata"));
        //carga un servicio y la lista con los logros que estan asignados
        l.add(new Servicio_Logro(s, logros));
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
        
        
    }
   
}
