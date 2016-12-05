package co.edu.ufps.business;

import co.edu.ufps.dao.UsuarioDAO;
import co.edu.ufps.dao.ContactoDAO;
import co.edu.ufps.dto.Usuario;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Manuel Florez
 */
public class Business {

    //devuelve null si es valido
    public String validarUsuario(String nombre, String password) {
        UsuarioDAO myusuarioDAO = new UsuarioDAO();
        return myusuarioDAO.validarUsuario(new Usuario(0, nombre, password));
    }

    public List mostrarFiltroContactos(int valor) throws SQLException {
        ContactoDAO contactoDAO = new ContactoDAO();
        return contactoDAO.mostrarFiltroContactos(valor);
    }

    public boolean guardarContacto(String consecutivo, String fecha, String asesor, String cto_nombres,
            String cto_apellidos, String cto_cc, String cto_cargo, String cto_cde, String cto_direccion,
            String cto_ciudad, String cto_pais, String cto_cecular, String cto_fijo, String cto_email,
            String cto_email_masivo, String cto_genero, String cto_departamento, String cto_notas) throws SQLException {
        ContactoDAO contactoDAO = new ContactoDAO();

        return contactoDAO.registrarContacto(consecutivo, fecha, asesor, cto_nombres,
                cto_apellidos, cto_cc, cto_cargo, cto_cde, cto_direccion,
                cto_ciudad, cto_pais, cto_cecular, cto_fijo, cto_email,
                cto_email_masivo, cto_genero, cto_departamento, cto_notas);
    }
}
