/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.ufps.dao;

import co.edu.ufps.dto.Servicio;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Manuel Florez
 */
public class ServicioDAO {

    // para listar todos los servicios que estan en la base de datos
    public List<Servicio> listarServicios() {
        List<Servicio>l = new ArrayList<>();
        
        //devuelve servicios de prueva
        l.add(new Servicio(1, "Educacion"));
        l.add(new Servicio(2, "exportacion"));
        
        //cualquier problema devuelve la vista vacia
        return l;
    }

    // guardar el servicio en la base de datos
    public void addServicio(String servicio) {
        System.out.println("------------------------- "+servicio);
    }
    
    
    
}
