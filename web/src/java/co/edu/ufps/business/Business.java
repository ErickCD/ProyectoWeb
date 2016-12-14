package co.edu.ufps.business;

import co.edu.ufps.dao.ContactoDAO;
import co.edu.ufps.dao.EmpresaAdscritaDAO;
import co.edu.ufps.dao.EmpresaDAO;
import co.edu.ufps.dao.UsuarioDAO;
import co.edu.ufps.dto.Contacto;
import co.edu.ufps.dto.Empresa;
import co.edu.ufps.dto.EmpresaAdscrita;
import co.edu.ufps.dto.Usuario;
import java.util.List;

/**
 *
 * @author Manuel Florez
 */
public class Business {

    
    private Usuario myUsuario;
    
    /**
     *
     * @param password password con el que se piensa validar
     * @return devuelve null si es valido
     */
    public String validarUsuario(Usuario u) {
        this.myUsuario = u;
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

    public boolean actualizarConcato(Contacto c) {
        ContactoDAO myDAO = new ContactoDAO();
        return myDAO.updateContacto(c);
    }

    public boolean registrarEmpresa(Empresa empresa, Contacto c) {
        EmpresaDAO myEmpresaDAO = new EmpresaDAO();
        return myEmpresaDAO.registrarEmpresa(empresa, c);
    }

    public List<EmpresaAdscrita> buscarEmpresaAds(String tipoBusqueda, String valorBuscado) {
        EmpresaAdscritaDAO myAdscritaDAO = new EmpresaAdscritaDAO();
        return myAdscritaDAO.buscarEmpresaAdscrita(tipoBusqueda, valorBuscado, 0);
    }

    public boolean registrarEmpresaAdscrita(EmpresaAdscrita ads) {
        EmpresaAdscritaDAO myEmpresaAdscrita = new EmpresaAdscritaDAO();
        return myEmpresaAdscrita.RegistrarEmpresaAdscrtita(ads);
    }

    public List<EmpresaAdscrita> mostrarEmpresasAdscritas(int cantidad) {
         EmpresaAdscritaDAO myEmpresaAdscrita = new EmpresaAdscritaDAO();
        return myEmpresaAdscrita.mostrarEmpresasAdscritas(cantidad);
    }

    public EmpresaAdscrita buscarEmpresaAds(String nombre_empresa) {
        EmpresaAdscritaDAO myEmpresaAdscritaDAO = new EmpresaAdscritaDAO();
        return myEmpresaAdscritaDAO.buscarEmpresaAds(nombre_empresa);
    }

}
