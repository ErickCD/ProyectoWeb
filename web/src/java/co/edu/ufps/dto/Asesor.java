package co.edu.ufps.dto;

/**
 *
 * @author Manuel FLorez
 */
public class Asesor {
    
    private int id;
    private String user;
    private String pasword;

    public Asesor(int id, String user, String pasword) {
        this.id = id;
        this.user = user;
        this.pasword = pasword;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getPasword() {
        return pasword;
    }

    public void setPasword(String pasword) {
        this.pasword = pasword;
    }

    public boolean iquals(Asesor aux) {
        return this.user.equalsIgnoreCase(aux.getUser()) && this.pasword.equals(aux.getPasword()) ;
    }

}
