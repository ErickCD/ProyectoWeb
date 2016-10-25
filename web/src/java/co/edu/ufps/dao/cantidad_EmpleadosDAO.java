package co.edu.ufps.dao;

import co.edu.ufps.connection.conexion;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author Clair
 */
public class cantidad_EmpleadosDAO {

    private Statement s = null;
    private conexion con = null;

    public cantidad_EmpleadosDAO() {
        try {
            con = new conexion();
            // Preparamos la consulta
            s = con.getConnection().createStatement();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public boolean insertarEmpleados(int empleado_tc, int empleado_mt, int empleado_directos, int empleado_indirectos) throws SQLException {
        boolean respuesta = false;

        respuesta = s.execute("INSERT INTO `cantidad_Empleados` VALUES (\'\',\'" + empleado_tc + "\',\'" + empleado_mt + "\',\'"
                + empleado_directos + "\',\'" + empleado_indirectos + "\');");

        return respuesta;
    }

    public ArrayList verCantidadEmpleados(int empleado_id) throws SQLException {
        ArrayList lista = new ArrayList();

        ResultSet rs = s.executeQuery("SELECT * FROM `cantidad_Empleados` WHERE `empleado_id` = " + empleado_id + ";");

        while (rs.next()) {
            lista.add(rs.getInt("empleado_tc"));
            lista.add(rs.getInt("empleado_mt"));
            lista.add(rs.getInt("empleado_directos"));
            lista.add(rs.getInt("empleado_indirectos"));
        }

        return lista;
    }

    public boolean borrarCantidadEmpleados(int empleado_id) throws SQLException {
        boolean respuesta = false;

        respuesta = s.execute("DELETE FROM `cantidad_Empleados` WHERE `empleado_id` = " + empleado_id + ";");

        return respuesta;
    }
}
