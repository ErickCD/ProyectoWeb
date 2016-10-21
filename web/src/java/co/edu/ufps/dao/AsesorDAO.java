package co.edu.ufps.dao;

import co.edu.ufps.connection.conexion;
import co.edu.ufps.dto.Asesor;
import java.sql.*;
/**
 *
 * @author manue
 */
public class AsesorDAO {
    
    public AsesorDAO() {
    }

    public String validarAsesor(Asesor asesor) {
        try{
            String respuesta = null;
            conexion con = new conexion();
            // Preparamos la consulta
            Statement s = con.getConnection().createStatement();
            ResultSet rs = s.executeQuery("SELECT * FROM asesor WHERE user='"+asesor.getUser()+"'");
            
            Asesor aux = null;
            
            while (rs.next()) {
                aux = new Asesor(
                        rs.getInt("id"),
                        rs.getString("user"),
                        rs.getString("password")
                );
            }
            
            if (aux != null && !aux.iquals(asesor)) {
                respuesta =  " No se encontro una coincidencia con este Asesor en la base de datos ";
            }
            
            s.close();
            rs.close();
            con.cerrarConnection();
            return respuesta ;
        }catch(Exception e){
            System.out.println(e.getMessage());
            return " Lo sentiomos en estos momentos no podemos aceder a la base de datos,"
                    + "comunicate con tu administrador ...."+e.getMessage();
        }
    }
    
}
