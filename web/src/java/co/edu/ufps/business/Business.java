package co.edu.ufps.business;

import co.edu.ufps.dao.ContactoDAO;
import co.edu.ufps.dao.UsuarioDAO;
import co.edu.ufps.dto.Contacto;
import co.edu.ufps.dto.Usuario;
import java.util.List;

/**
 *
 * @author Manuel Florez
 */
public class Business {

    /**
     *
     * @param password password con el que se piensa validar
     * @return devuelve null si es valido
     */
    public String validarUsuario(Usuario u) {
        UsuarioDAO myusuarioDAO = new UsuarioDAO();
        return myusuarioDAO.validarUsuario(u);
    }

    public List<Contacto> listarContactos(int i) {
        ContactoDAO myContactoDAO = new ContactoDAO();
        return myContactoDAO.mostrarFiltroContactos(i);
    }

    public int numeroConsecutivoContacto() {
        ContactoDAO myContactoDAO = new ContactoDAO();
        return myContactoDAO.numeroConsecutivoContacto();
    }

    public boolean guardarContacto(Contacto contacto) {
        ContactoDAO myDAO = new ContactoDAO();
        return myDAO.registrarContacto(contacto);
    }

    public Contacto buscarContacto(String tipoBusqueda, String valorBuscado) {
        ContactoDAO myDAO = new ContactoDAO();
        return myDAO.buscarContacto(tipoBusqueda, valorBuscado);
    }

}
