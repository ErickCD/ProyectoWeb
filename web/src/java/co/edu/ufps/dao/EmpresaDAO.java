package co.edu.ufps.dao;

import co.edu.ufps.connection.conexion;
import co.edu.ufps.dto.Empresa;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Date;
import java.util.ArrayList;

/**
 *
 * @author Clair
 */
public class EmpresaDAO {

    private Statement s = null;
    private conexion con = null;

    public EmpresaDAO() {
        try {
            con = new conexion();
            // Preparamos la consulta
            s = con.getConnection().createStatement();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public boolean registrarEmpresa(String emp_clasCliente, String emp_cc, String emp_nombre, int emp_nit, String emp_nombreRepLegal,
            String emp_constitucionLegal, Date emp_fechaConstitucion, String emp_noEmpleado, String emp_direccion, String emp_ciudad,
            String emp_telefono, String emp_celular, String emp_email, String emp_urlWebsite, String emp_tipo, String emp_tipoVenta,
            String emp_regMercantil, String emp_numRegistroMercantil, Date emp_renovacion_mercantil, String emp_codigoCIIU,
            String emp_actividadInternacional, String emp_paisesComercio, String emp_negocioWeb, String emp_productoServicio,
            String emp_medioCDE, String emp_observaciones) throws SQLException {
        boolean respuesta = false;

        respuesta = s.execute("INSERT INTO `empresa`(`emp_clasCliente`, `emp_cc`, `emp_nombre`, `emp_nit`, `emp_nombreRepLegal`,"
                + " `emp_constitucionLegal`, `emp_fechaConstitucion`, `emp_noEmpleado`, `emp_direccion`, `emp_ciudad`, `emp_telefono`,"
                + " `emp_celular`, `emp_urlWebsite`, `emp_tipo`, `emp_tipoVenta`, `emp_registroMercantil`, `emp_numRegistroMercantil`,"
                + " `emp_ultimoAnioRenovacion`, `emp_codigoCIIU`, `emp_actividadInternacional`, `emp_paisesComercio`, `emp_negocioWeb`,"
                + " `emp_productoServicio`, `emp_medioCDE`, `emp_observaciones`) VALUES (\'" + emp_clasCliente + "\',\'" + emp_cc + "\',\'"
                + emp_nombre + "\'," + emp_nit + ",\'" + emp_nombreRepLegal + "\',\'" + emp_constitucionLegal + "\',\'" + emp_fechaConstitucion
                + "\',\'" + emp_noEmpleado + "\',\'" + emp_direccion + "\',\'" + emp_ciudad + "\',\'" + emp_telefono + "\',\'" + emp_celular
                + "\',\'" + emp_email + "\',\'" + emp_urlWebsite + "\',\'" + emp_tipo + "\',\'" + emp_tipoVenta + "\',\'" + emp_regMercantil
                + "\',\'" + emp_numRegistroMercantil + "\',\'" + emp_renovacion_mercantil + "\',\'" + emp_codigoCIIU + "\',\'"
                + emp_actividadInternacional + "\',\'" + emp_paisesComercio + "\',\'" + emp_negocioWeb + "\',\'" + emp_productoServicio + "\',\'"
                + emp_medioCDE + "\',\'" + emp_observaciones + "\',);");

        return respuesta;
    }

    public boolean borrarEmpresa(int emp_nit) throws SQLException {
        boolean respuesta = false;
        respuesta = s.execute("DELETE FROM `empresa` WHERE emp_nit = " + emp_nit + ";");
        return respuesta;
    }

    public ArrayList mostrarEmpresa(int emp_nit) throws SQLException {
        ResultSet rs = s.executeQuery("SELECT * FROM `empresa` WHERE `emp_nit` =" + emp_nit + " ;");
        ArrayList lista = new ArrayList();
        Empresa empresa = null;

        while (rs.next()) {
            empresa = new Empresa(rs.getString("emp_clasCliente"), rs.getString("emp_cc"), rs.getString("emp_nombre"),
                    rs.getInt("emp_nit"), rs.getString("emp_nombreRepLegal"), rs.getString("emp_constitucionLegal"),
                    rs.getDate("emp_fechaConstitucion"), rs.getString("emp_noEmpleado"), rs.getString("emp_direccion"),
                    rs.getString("emp_ciudad"), rs.getString("emp_telefono"), rs.getString("emp_celular"), rs.getString("emp_email"),
                    rs.getString("emp_urlWebsite"), rs.getString("emp_tipo"), rs.getString("emp_tipoVenta"), rs.getString("emp_regMercantil"),
                    rs.getString("emp_numRegistroMercantil"), rs.getDate("emp_renovacion_mercantil"), rs.getString("emp_codigoCIIU"),
                    rs.getString("emp_actividadInternacional"), rs.getString("emp_paisesComercio"), rs.getString("emp_negocioWeb"),
                    rs.getString("emp_productoServi cio"), rs.getString("emp_medioCDE"), rs.getString("emp_observaciones"));
        }

        lista.add(empresa);

        if (!lista.isEmpty()) {
            return lista;
        }
        return null;
    }

    public ArrayList mostrarEmpresas() throws SQLException {
        ResultSet rs = s.executeQuery("SELECT * FROM `empresa`;");
        ArrayList lista = new ArrayList();
        Empresa empresa = null;

        while (rs.next()) {
            empresa = new Empresa(rs.getString("emp_clasCliente"), rs.getString("emp_cc"), rs.getString("emp_nombre"),
                    rs.getInt("emp_nit"), rs.getString("emp_nombreRepLegal"), rs.getString("emp_constitucionLegal"),
                    rs.getDate("emp_fechaConstitucion"), rs.getString("emp_noEmpleado"), rs.getString("emp_direccion"),
                    rs.getString("emp_ciudad"), rs.getString("emp_telefono"), rs.getString("emp_celular"), rs.getString("emp_email"),
                    rs.getString("emp_urlWebsite"), rs.getString("emp_tipo"), rs.getString("emp_tipoVenta"), rs.getString("emp_regMercantil"),
                    rs.getString("emp_numRegistroMercantil"), rs.getDate("emp_renovacion_mercantil"), rs.getString("emp_codigoCIIU"),
                    rs.getString("emp_actividadInternacional"), rs.getString("emp_paisesComercio"), rs.getString("emp_negocioWeb"),
                    rs.getString("emp_productoServi cio"), rs.getString("emp_medioCDE"), rs.getString("emp_observaciones"));

            lista.add(empresa);
        }

        if (!lista.isEmpty()) {
            return lista;
        }

        return null;
    }
}
