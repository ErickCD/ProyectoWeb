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
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(EmpresaAdscritaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return respuesta;
    }

    public List<EmpresaAdscrita> mostrarEmpresasAdscritas(int cantidad) {
        ArrayList lista = new ArrayList();
        try {
            ResultSet rs = s.executeQuery("SELECT * FROM `Empresaads` order by `ads_nombreEmpresa` asc limit " + cantidad + "," + (cantidad + 10) + ";");
            EmpresaAdscrita emp = null;

            while (rs.next()) {
                emp = new EmpresaAdscrita(rs.getString("ads_nombreEmpresa"), rs.getString("ads_nombreGerente"), rs.getString("ads_email"),
                        rs.getString("ads_telefono"), rs.getString("ads_paginaWeb"));
                lista.add(emp);
            }

        } catch (SQLException ex) {
            Logger.getLogger(EmpresaAdscritaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return lista;
    }

    //Busquedas.
    public List<EmpresaAdscrita> buscarEmpresaAdscrita(String tipoBusqueda, String valorBuscado, int cantidad) {
        ArrayList lista = new ArrayList();
        try {
            ResultSet rs = null;
            if (tipoBusqueda.equals("nombre_empresa")) {
                rs = s.executeQuery("SELECT * FROM `Empresaads` where `ads_nombreEmpresa` like \"" + valorBuscado + "%\" order by `ads_nombreEmpresa` asc limit " + cantidad + " , " + (cantidad + 10) + ";");
            } else if (tipoBusqueda.equals("nombre_gerente")) {
                rs = s.executeQuery("SELECT * FROM `Empresaads` where `ads_nombreGerente` like \"" + valorBuscado + "%\" order by `ads_nombreGerente` asc limit " + cantidad + "," + (cantidad + 10) + ";");
            } else if (tipoBusqueda.equals("email")) {
                rs = s.executeQuery("SELECT * FROM `Empresaads` where `ads_email` like \"" + valorBuscado + "%\" order by `ads_email` asc limit " + cantidad + "," + (cantidad + 10) + ";");
            } else if (tipoBusqueda.equals("telefono")) {
                rs = s.executeQuery("SELECT * FROM `Empresaads` where `ads_telefono` like \"" + valorBuscado + "%\" order by `ads_telefono` asc limit " + cantidad + "," + (cantidad + 10) + ";");
            } else if (tipoBusqueda.equals("sitio_web")) {
                rs = s.executeQuery("SELECT * FROM `Empresaads` where `ads_paginaWeb` like \"" + valorBuscado + "%\" order by `ads_paginaWeb` asc limit " + cantidad + "," + (cantidad + 10) + ";");
            }
            EmpresaAdscrita emp = null;

            while (rs.next()) {
                emp = new EmpresaAdscrita(rs.getString("ads_nombreEmpresa"), rs.getString("ads_nombreGerente"), rs.getString("ads_email"),
                        rs.getString("ads_telefono"), rs.getString("ads_paginaWeb"));
                lista.add(emp);
            }
            return lista;
        } catch (SQLException ex) {
            Logger.getLogger(EmpresaAdscritaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return lista;
    }

    public EmpresaAdscrita buscaEmpresaAdscrita(String valorBuscado) {
        EmpresaAdscrita aux;
        aux = null;

        ResultSet rs = null;

        try {
            rs = s.executeQuery("SELECT * FROM `Empresaads` where `ads_nombreEmpresa` = \'" + valorBuscado + "\';");
            rs.next();
            aux = new EmpresaAdscrita(rs.getString("ads_nombreEmpresa"), rs.getString("ads_nombreGerente"), rs.getString("ads_email"),
                    rs.getString("ads_telefono"), rs.getString("ads_paginaWeb"));
            return aux;
        } catch (SQLException ex) {
            Logger.getLogger(EmpresaAdscritaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return aux;
    }
    //Final de busqueda

    //Actualizar
    public boolean actualizarEmpresaAdscrita(EmpresaAdscrita empresaAds) {
        boolean respuesta = false;

        try {
            respuesta = s.execute("UPDATE `Empresaads` SET `ads_nombreGerente`=\'" + empresaAds.getNombre_gerente()
                    + "\',`ads_email`=\'" + empresaAds.getEmail() + "\',`ads_paginaWeb`=\'" + empresaAds.getSitio_web() + "\',`ads_telefono`=\'"
                    + empresaAds.getTelefono() + "\' WHERE `ads_nombreEmpresa`=\'" + empresaAds.getNombre_empresa() + "\';");
            return true;
        } catch (SQLException ex) {
            Logger.getLogger(EmpresaAdscritaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return respuesta;
    }
    //Fin actualizar
}
