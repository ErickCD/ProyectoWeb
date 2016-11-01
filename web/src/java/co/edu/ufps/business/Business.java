package co.edu.ufps.business;

import co.edu.ufps.dao.UsuarioDAO;
import co.edu.ufps.dao.ContactoDAO;
import co.edu.ufps.dto.Usuario;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author Manuel Florez
 */
public class Business {

    //devuelve null si es valido
    public String validarUsuario(String user, String password) {
        UsuarioDAO myusuarioDAO = new UsuarioDAO();
        return myusuarioDAO.validarUsuario(new Usuario(0, user, password));
    }

    public ArrayList mostrarFiltroContactos() throws SQLException {
        ContactoDAO contactoDAO = new ContactoDAO();
        return contactoDAO.mostrarFiltroContactos();
    }
}
