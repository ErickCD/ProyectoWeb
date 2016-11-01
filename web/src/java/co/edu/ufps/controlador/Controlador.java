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
    public String validarUsuario(String user, String password){
        return myBusiness.validarUsuario(user, password);
    }
    
    public ArrayList mostrarFiltroContactos() throws SQLException{
        return myBusiness.mostrarFiltroContactos();
    }
    
}
