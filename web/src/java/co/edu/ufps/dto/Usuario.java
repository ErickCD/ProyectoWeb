package co.edu.ufps.dto;

/**
 *
 * @author Manuel Florez
 */
public class Usuario {
    
    private String nombre;
    private String password;
    private String user;        //asesor,empresa,administrador

    public Usuario(String nombre, String password, String user) {
        this.nombre = nombre;
        this.password = password;
        this.user = user;
    }

    public Usuario() {
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }
    
}
