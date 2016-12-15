
package co.edu.ufps.dto;

/**
 *
 * @author Manuel Florez
 */
public class Logro {
    
    private int id;
    private String nombre;

    public Logro() {
    }

    public Logro(int id, String nombre) {
        this.id = id;
        this.nombre = nombre;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    
}
