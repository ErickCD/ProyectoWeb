package co.edu.ufps.controlador;

import co.edu.ufps.business.Business;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author Manuel Florez
 */
public class Controlador {
    
    private final Business myBusiness = new Business();
    
    // devuelve null si es valido
    public String validarAsesor(String user, String password){
        return myBusiness.validarAsesor(user, password);
    }
    
    public ArrayList mostrarFiltroContactos() throws SQLException{
        return myBusiness.mostrarFiltroContactos();
    }
    
}
