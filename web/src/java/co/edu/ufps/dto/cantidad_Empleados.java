package co.edu.ufps.dto;

/**
 *
 * @author Clair
 */
public class cantidad_Empleados {

    private int empleado_id, empleado_tc, empleado_mt, empleado_directos, empleado_indirectos;

    public cantidad_Empleados(int empleado_id, int empleado_tc, int empleado_mt, int empleado_directos, int empleado_indirectos) {
        this.empleado_id = empleado_id;
        this.empleado_tc = empleado_tc;
        this.empleado_mt = empleado_mt;
        this.empleado_directos = empleado_directos;
        this.empleado_indirectos = empleado_indirectos;
    }

    public cantidad_Empleados(int empleado_tc, int empleado_mt, int empleado_directos, int empleado_indirectos) {
        this.empleado_tc = empleado_tc;
        this.empleado_mt = empleado_mt;
        this.empleado_directos = empleado_directos;
        this.empleado_indirectos = empleado_indirectos;
    }

    public int getEmpleado_id() {
        return empleado_id;
    }

    public void setEmpleado_id(int empleado_id) {
        this.empleado_id = empleado_id;
    }

    public int getEmpleado_tc() {
        return empleado_tc;
    }

    public void setEmpleado_tc(int empleado_tc) {
        this.empleado_tc = empleado_tc;
    }

    public int getEmpleado_mt() {
        return empleado_mt;
    }

    public void setEmpleado_mt(int empleado_mt) {
        this.empleado_mt = empleado_mt;
    }

    public int getEmpleado_directos() {
        return empleado_directos;
    }

    public void setEmpleado_directos(int empleado_directos) {
        this.empleado_directos = empleado_directos;
    }

    public int getEmpleado_indirectos() {
        return empleado_indirectos;
    }

    public void setEmpleado_indirectos(int empleado_indirectos) {
        this.empleado_indirectos = empleado_indirectos;
    }

}
