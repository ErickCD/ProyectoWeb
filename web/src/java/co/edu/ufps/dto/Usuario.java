package co.edu.ufps.dto;

/**
 *
 * @author Manuel FLorez
 */
public class Usuario {

    private int id;
    private String nombre;
    private String pasword;
    private String user;

    public Usuario(int id, String nombre, String pasword) {
        this.id = id;
        this.nombre = nombre;
        this.pasword = pasword;
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

    public String getPasword() {
        return pasword;
    }

    public void setPasword(String pasword) {
        this.pasword = pasword;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public boolean iquals(Usuario aux) {
        return this.nombre.equalsIgnoreCase(aux.getNombre()) && this.pasword.equals(aux.getPasword());
    }

}
