package co.edu.ufps.dao;

import co.edu.ufps.connection.conexion;
import co.edu.ufps.dto.EmpresaAdscrita;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Clair
 */
public class EmpresaAdscritaDAO {

    private Statement s = null;
    private conexion con = null;

    public EmpresaAdscritaDAO() {
        try {
            con = new conexion();
            // Preparamos la consulta
            s = con.getConnection().createStatement();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public boolean RegistrarEmpresaAdscrtita(EmpresaAdscrita emp) {
        boolean respuesta = false;
        try {
            respuesta = s.execute("INSERT INTO `Empresaads`( `ads_nombreEmpresa`, `ads_nombreGerente`, `ads_email`, `ads_paginaWeb`,"
                    + " `ads_telefono`) VALUES (\'" + emp.getNombre_empresa() + "\',\'" + emp.getNombre_gerente() + "\',\'" + emp.getEmail() + "\',"
                    + "\'" + emp.getSitio_web() + "\',\'" + emp.getTelefono() + "\');");
        } catch (SQLException ex) {
            Logger.getLogger(EmpresaAdscritaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return respuesta;
    }

    //Busquedas.
    public List<EmpresaAdscrita> buscarEmpresaAdscrita(String tipoBusqueda, String valorBuscado) {
        ArrayList lista = new ArrayList();
        try {
            s.execute("");
        } catch (SQLException ex) {
            Logger.getLogger(EmpresaAdscritaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return lista;
    }
}
