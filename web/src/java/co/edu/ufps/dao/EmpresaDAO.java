package co.edu.ufps.dao;

import co.edu.ufps.connection.conexion;
import co.edu.ufps.dto.Empresa;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Date;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

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

    public boolean registrarEmpresa(Empresa empresa, ContactoDAO con) {
        boolean respuesta = false;

        try {
            respuesta = s.execute("INSERT INTO `empresa`(`emp_consecutivo`, `emp_fecha`, `emp_asesor`, `emp_clasCliente`, `emp_cc`, "
                    + "`emp_nombre`, `emp_nit`, `emp_nombreRepLegal`, `emp_constitucionLegal`, `emp_otraConstitucion`, `emp_fechaConstitucion`,"
                    + " `emp_noEmpleadoTC`,"
                    + " `emp_noEmpleadoMT`,`emp_noEmpleadoDirectos`,`emp_noEmpleadoIndirectos`, `emp_direccion`, `emp_ciudad`, `emp_telefono`,"
                    + " `emp_celular`, `emp_emailEmpresa`, `emp_urlWebsite`, `emp_tipo`,"
                    + " `emp_tipoVenta`, `emp_registroMercantil`, `emp_numRegistroMercantil`, `emp_ultimoAnioRenovacion`, `emp_codigoCIIU`,"
                    + " `emp_actividadInternacional`, `emp_paisesComercio`, `emp_negocioWeb`, `emp_productoServicio`, `emp_medioCDE`,"
                    + " `emp_observaciones`) VALUES (\'" + empresa.getEmp_consecutivo() + "\', \'" + empresa.getEmp_fecha() + "\', \'"
                    + empresa.getEmp_asesor() + "\', \'" + empresa.getEmp_clasCliente() + "\', \'" + empresa.getEmp_cc() + "\', \'"
                    + empresa.getEmp_nombre() + "\', " + empresa.getEmp_nit() + ", \'" + empresa.getEmp_nombreRepLegal() + "\', \'"
                    + empresa.getEmp_constitucionLegal() + "\', \'"
                    + empresa.getEmp_otraConstitucion() + "\', \'" + empresa.getEmp_fechaConstitucion() + "\', \'" + empresa.getEmp_noEmpleadoTC()
                    + "\', \'" + empresa.getEmp_noEmpleadoMT() + "\', \'" + empresa.getEmp_noEmpleadoDirectos() + "\', \'"
                    + empresa.getEmp_noEmpleadoIndirectos()
                    + "\', \'" + empresa.getEmp_direccion() + "\', \'" + empresa.getEmp_ciudad() + "\', \'" + empresa.getEmp_telefono() + "\', \'"
                    + empresa.getEmp_celular() + "\', \'" + empresa.getEmp_emailEmpresa() + "\', \'" + empresa.getEmp_urlWebsite() + "\', \'"
                    + empresa.getEmp_tipo() + "\', \'" + empresa.getEmp_tipoVenta() + "\', \'" + empresa.getEmp_registroMercantil() + "\', \'"
                    + empresa.getEmp_numRegistroMercantil() + "\', \'" + empresa.getEmp_ultimoAnioRenovacion() + "\', \'"
                    + empresa.getEmp_codigoCIIU() + "\', \'" + empresa.getEmp_actividadInternacional() + "\', \'" + empresa.getEmp_paisesComercio()
                    + "\', \'" + empresa.getEmp_negocioWeb() + "\', \'" + empresa.getEmp_productoServicio() + "\', \'" + empresa.getEmp_medioCDE()
                    + "\', \'" + empresa.getEmp_observaciones() + "\');");
        } catch (SQLException ex) {
            Logger.getLogger(EmpresaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return respuesta;
    }

    public boolean borrarEmpresa(int emp_nit) throws SQLException {
        boolean respuesta = false;
        respuesta = s.execute("DELETE FROM `empresa` WHERE emp_nit = " + emp_nit + ";");
        return respuesta;
    }

    public boolean updateEmpresa(String tipoUpdate, Empresa empresa) {
        boolean respuesta = false;
        ResultSet rs = null;

        try {
            if (tipoUpdate.equals("Nombre")) {
                rs = s.executeQuery("UPDATE `empresa` SET `emp_consecutivo`=\'" + empresa.getEmp_consecutivo() + "\',`emp_fecha`=\'"
                        + empresa.getEmp_fecha() + "\',`emp_asesor`=\'" + empresa.getEmp_asesor() + "\',`emp_clasCliente`=\'"
                        + empresa.getEmp_clasCliente() + "\',`emp_cc`=\'" + empresa.getEmp_cc() + "\',`emp_nit`=\'" + empresa.getEmp_nit()
                        + "\',`emp_nombreRepLegal`=\'" + empresa.getEmp_nombreRepLegal() + "\',`emp_constitucionLegal`=\'"
                        + empresa.getEmp_constitucionLegal() + "\',`emp_otraConstitucion`=\'"
                        + empresa.getEmp_otraConstitucion() + "\',`emp_fechaConstitucion`=\'" + empresa.getEmp_fechaConstitucion()
                        + "\',`emp_noEmpleadoTC`= \'" + empresa.getEmp_noEmpleadoTC() + "\',`emp_noEmpleadoMT`= \'" + empresa.getEmp_noEmpleadoMT()
                        + "\',`emp_noEmpleadoDirectos`= \'" + empresa.getEmp_noEmpleadoDirectos() + "\',`emp_noEmpleadoIndirectos`= \'"
                        + empresa.getEmp_noEmpleadoIndirectos() + "\',`emp_direccion`= \'" + empresa.getEmp_direccion()
                        + "\',`emp_ciudad`= \'" + empresa.getEmp_ciudad() + "\',`emp_telefono`= \'" + empresa.getEmp_telefono()
                        + "\',`emp_celular`= \'" + empresa.getEmp_celular() + "\',`emp_emailEmpresa`= \'" + empresa.getEmp_emailEmpresa()
                        + "\',`emp_urlWebsite`=\'" + empresa.getEmp_urlWebsite() + "\',`emp_tipo`=\'" + empresa.getEmp_tipo()
                        + "\',`emp_tipoVenta`= \'" + empresa.getEmp_tipoVenta() + "\',`emp_registroMercantil`=\'"
                        + empresa.getEmp_registroMercantil() + "\',`emp_numRegistroMercantil`=\'" + empresa.getEmp_numRegistroMercantil()
                        + "\',`emp_ultimoAnioRenovacion`=\'" + empresa.getEmp_ultimoAnioRenovacion() + "\',`emp_codigoCIIU`=\'"
                        + empresa.getEmp_codigoCIIU() + "\',`emp_actividadInternacional`= \'" + empresa.getEmp_actividadInternacional()
                        + "\',`emp_paisesComercio`= \'" + empresa.getEmp_paisesComercio() + "\',`emp_negocioWeb`= \'"
                        + empresa.getEmp_negocioWeb() + "\',`emp_productoServicio`= \'" + empresa.getEmp_productoServicio()
                        + "\',`emp_medioCDE`= \'" + empresa.getEmp_medioCDE() + "\',`emp_observaciones`= \'" + empresa.getEmp_observaciones()
                        + "\' WHERE `emp_nombre` = \'" + empresa.getEmp_nombre() + "\';");
            } else if (tipoUpdate.equals("Nit")) {
                rs = s.executeQuery("UPDATE `empresa` SET `emp_consecutivo`=\'" + empresa.getEmp_consecutivo() + "\',`emp_fecha`=\'"
                        + empresa.getEmp_fecha() + "\',`emp_asesor`=\'" + empresa.getEmp_asesor() + "\',`emp_clasCliente`=\'"
                        + empresa.getEmp_clasCliente() + "\',`emp_cc`=\'" + empresa.getEmp_cc() + "\',`emp_nombre`=\'" + empresa.getEmp_nombre()
                        + "\',`emp_nombreRepLegal`=\'" + empresa.getEmp_nombreRepLegal() + "\',`emp_constitucionLegal`=\'"
                        + empresa.getEmp_constitucionLegal() + "\',`emp_otraConstitucion`=\'"
                        + empresa.getEmp_otraConstitucion() + "\',`emp_fechaConstitucion`=\'" + empresa.getEmp_fechaConstitucion()
                        + "\',`emp_noEmpleadoTC`= \'" + empresa.getEmp_noEmpleadoTC() + "\',`emp_noEmpleadoMT`= \'" + empresa.getEmp_noEmpleadoMT()
                        + "\',`emp_noEmpleadoDirectos`= \'" + empresa.getEmp_noEmpleadoDirectos() + "\',`emp_noEmpleadoIndirectos`= \'"
                        + empresa.getEmp_noEmpleadoIndirectos() + "\',`emp_direccion`= \'" + empresa.getEmp_direccion()
                        + "\',`emp_ciudad`= \'" + empresa.getEmp_ciudad() + "\',`emp_telefono`= \'" + empresa.getEmp_telefono()
                        + "\',`emp_celular`= \'" + empresa.getEmp_celular() + "\',`emp_emailEmpresa`= \'" + empresa.getEmp_emailEmpresa()
                        + "\',`emp_urlWebsite`=\'" + empresa.getEmp_urlWebsite() + "\',`emp_tipo`=\'" + empresa.getEmp_tipo()
                        + "\',`emp_tipoVenta`= \'" + empresa.getEmp_tipoVenta() + "\',`emp_registroMercantil`=\'"
                        + empresa.getEmp_registroMercantil() + "\',`emp_numRegistroMercantil`=\'" + empresa.getEmp_numRegistroMercantil()
                        + "\',`emp_ultimoAnioRenovacion`=\'" + empresa.getEmp_ultimoAnioRenovacion() + "\',`emp_codigoCIIU`=\'"
                        + empresa.getEmp_codigoCIIU() + "\',`emp_actividadInternacional`= \'" + empresa.getEmp_actividadInternacional()
                        + "\',`emp_paisesComercio`= \'" + empresa.getEmp_paisesComercio() + "\',`emp_negocioWeb`= \'"
                        + empresa.getEmp_negocioWeb() + "\',`emp_productoServicio`= \'" + empresa.getEmp_productoServicio()
                        + "\',`emp_medioCDE`= \'" + empresa.getEmp_medioCDE() + "\',`emp_observaciones`= \'" + empresa.getEmp_observaciones()
                        + "\' WHERE `emp_nit` = \'" + empresa.getEmp_nit() + "\';");
            }
        } catch (SQLException ex) {
            Logger.getLogger(EmpresaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return respuesta;
    }

    public Empresa mostrarEmpresa(int emp_nit) {

        Empresa empresa = null;
        ResultSet rs = null;
        try {
            rs = s.executeQuery("SELECT * FROM `empresa` WHERE `emp_nit` =" + emp_nit + " ;");

            rs.next();
            empresa = new Empresa(rs.getString("emp_consecutivo"), rs.getString("emp_fecha"), rs.getString("emp_asesor"),
                    rs.getString("emp_clasCliente"), rs.getString("emp_cc"), rs.getString("emp_nombre"), rs.getInt("emp_nit"),
                    rs.getString("emp_nombreRepLegal"), rs.getString("emp_constitucionLegal"), rs.getString("emp_otraConstitucion"),
                    rs.getString("emp_fechaConstitucion"), rs.getString("emp_noEmpleadoTC"), rs.getString("emp_noEmpleadoMT"),
                    rs.getString("emp_noEmpleadoDirectos"), rs.getString("emp_noEmpleadoIndirectos"),
                    rs.getString("emp_direccion"), rs.getString("emp_ciudad"), rs.getString("emp_telefono"), rs.getString("emp_celular"),
                    rs.getString("emp_emailEmpresa"), rs.getString("emp_urlWebsite"), rs.getString("emp_tipo"), rs.getString("emp_tipoVenta"),
                    rs.getString("emp_registroMercantil"), rs.getString("emp_numRegistroMercantil"), rs.getString("emp_ultimoAnioRenovacion"),
                    rs.getString("emp_codigoCIIU"), rs.getString("emp_actividadInternacional"), rs.getString("emp_paisesComercio"),
                    rs.getString("emp_negocioWeb"), rs.getString("emp_productoServicio"), rs.getString("emp_medioCDE"),
                    rs.getString("emp_observaciones"));
        } catch (SQLException ex) {
            Logger.getLogger(EmpresaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return empresa;
    }

    public List<Empresa> mostrarEmpresas(int cantidad) {
        Empresa empresa = null;
        ResultSet rs;
        List<Empresa> lista;
        lista = new ArrayList<>();

        try {
            rs = s.executeQuery("SELECT * FROM `empresa` order by `emp_nombre` asc limit" + cantidad + "," + (cantidad + 10) + ";");

            while (rs.next()) {
                empresa = new Empresa(rs.getString("emp_consecutivo"), rs.getString("emp_fecha"), rs.getString("emp_asesor"),
                        rs.getString("emp_clasCliente"), rs.getString("emp_cc"), rs.getString("emp_nombre"), rs.getInt("emp_nit"),
                        rs.getString("emp_nombreRepLegal"), rs.getString("emp_constitucionLegal"), rs.getString("emp_otraConstitucion"),
                        rs.getString("emp_fechaConstitucion"), rs.getString("emp_noEmpleadoTC"), rs.getString("emp_noEmpleadoMT"),
                        rs.getString("emp_noEmpleadoDirectos"), rs.getString("emp_noEmpleadoIndirectos"),
                        rs.getString("emp_direccion"), rs.getString("emp_ciudad"), rs.getString("emp_telefono"), rs.getString("emp_celular"),
                        rs.getString("emp_emailEmpresa"), rs.getString("emp_urlWebsite"), rs.getString("emp_tipo"), rs.getString("emp_tipoVenta"),
                        rs.getString("emp_registroMercantil"), rs.getString("emp_numRegistroMercantil"), rs.getString("emp_ultimoAnioRenovacion"),
                        rs.getString("emp_codigoCIIU"), rs.getString("emp_actividadInternacional"), rs.getString("emp_paisesComercio"),
                        rs.getString("emp_negocioWeb"), rs.getString("emp_productoServicio"), rs.getString("emp_medioCDE"),
                        rs.getString("emp_observaciones"));

                lista.add(empresa);
            }
        } catch (SQLException ex) {
            Logger.getLogger(EmpresaDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        if (!lista.isEmpty()) {
            return lista;
        }

        return null;
    }
}
