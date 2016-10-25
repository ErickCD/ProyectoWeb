package co.edu.ufps.business;

import co.edu.ufps.dao.AsesorDAO;
import co.edu.ufps.dao.ContactoDAO;
import co.edu.ufps.dto.Asesor;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author Manuel Florez
 */
public class Business {

    //devuelve null si es valido
    public String validarAsesor(String user, String password) {
        AsesorDAO myAsesorDAO = new AsesorDAO();
        return myAsesorDAO.validarAsesor(new Asesor(0 ,user, password));
    }
    
    public ArrayList mostrarFiltroContactos() throws SQLException{
        ContactoDAO contactoDAO = new ContactoDAO();
        return contactoDAO.mostrarFiltroContactos();
    }
}
