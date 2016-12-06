package co.edu.ufps.controlador;

import co.edu.ufps.business.Business;
import co.edu.ufps.dto.Contacto;
import co.edu.ufps.dto.Usuario;
import java.util.List;

/**
 *
 * @author Manuel Florez
 */
public class Controlador {
    
    private final Business myBusiness = new Business();
    
    //buscar un contacto en la base de datos
    public Contacto buscarContacto(String tipoBusqueda,String valorBuscado){
        return myBusiness.buscarContacto(tipoBusqueda,valorBuscado);
    }
    
    // devuelve null si es valido
    public String validarUsuario(Usuario u){
        return myBusiness.validarUsuario(u);
    }
    
    // lista los contactos apartir del numero y ordenados por nombre
    public List<Contacto> listarContactos(int i){
        return myBusiness.listarContactos(i);
    }
    
    public boolean guardarContacto(Contacto contacto){
        return myBusiness.guardarContacto(contacto);
        
    }
    
    public int numeroConsecutivoContacto(){
        return myBusiness.numeroConsecutivoContacto();
    }
    
}
