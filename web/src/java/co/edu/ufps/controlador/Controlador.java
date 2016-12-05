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
    public String validarUsuario(String user, String password) {
        return myBusiness.validarUsuario(user, password);
    }

    public ArrayList mostrarFiltroContactos() throws SQLException {
        return myBusiness.mostrarFiltroContactos();
    }

    public boolean guardarContacto(String consecutivo, String fecha, String asesor, String cto_nombres,
            String cto_apellidos, String cto_cc, String cto_cargo, String cto_cde, String cto_direccion,
            String cto_ciudad, String cto_pais, String cto_cecular, String cto_fijo, String cto_email,
            String cto_email_masivo, String cto_genero, String cto_departamento, String cto_notas) throws SQLException {

        return myBusiness.guardarContacto(consecutivo, fecha, asesor, cto_nombres,
                cto_apellidos, cto_cc, cto_cargo, cto_cde, cto_direccion,
                cto_ciudad, cto_pais, cto_cecular, cto_fijo, cto_email,
                cto_email_masivo, cto_genero, cto_departamento, cto_notas);
    }

}
