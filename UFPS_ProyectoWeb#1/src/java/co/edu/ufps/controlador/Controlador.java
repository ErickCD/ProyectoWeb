package co.edu.ufps.controlador;

import co.edu.ufps.business.Business;

/**
 *
 * @author Manuel Florez
 */
public class Controlador {
    
    private Business myBusiness = new Business();
    
    // devuelve null si es valido
    public String validarAsesor(String user, String password){
        return myBusiness.validarAsesor(user, password);
    }
    
}
