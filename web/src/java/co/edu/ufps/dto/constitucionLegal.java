package co.edu.ufps.dto;

/**
 *
 * @author Clair
 */
public class constitucionLegal {

    private int constitucionLegal_id;
    private String constitucionLegal_tipoConstitucion;

    public constitucionLegal(int constitucionLegal_id, String constitucionLegal_tipoConstitucion) {
        this.constitucionLegal_id = constitucionLegal_id;
        this.constitucionLegal_tipoConstitucion = constitucionLegal_tipoConstitucion;
    }

    public int getConstitucionLegal_id() {
        return constitucionLegal_id;
    }

    public void setConstitucionLegal_id(int constitucionLegal_id) {
        this.constitucionLegal_id = constitucionLegal_id;
    }

    public String getConstitucionLegal_tipoConstitucion() {
        return constitucionLegal_tipoConstitucion;
    }

    public void setConstitucionLegal_tipoConstitucion(String constitucionLegal_tipoConstitucion) {
        this.constitucionLegal_tipoConstitucion = constitucionLegal_tipoConstitucion;
    }
}
