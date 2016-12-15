/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.ufps.dao;

import co.edu.ufps.dto.Logro;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Manuel Florez
 */
public class LogroDAO {

    //lista todos los logros de la base de datos
    public List<Logro> listarLogros() {
        List<Logro>l = new ArrayList<>();
        
        //logros de prueba
        l.add(new Logro(1, "Logro Bronce"));
        l.add(new Logro(2, "logro Plata"));
        
        return l;
    }
    
    //añadir el logro a la base de datos
    public void addLogro(String logro) {
        System.out.println("----------------------------------------------- "+logro);
    }
    
}
