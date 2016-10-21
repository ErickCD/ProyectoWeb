package co.edu.ufps.dto;

import java.util.Date;

/**
 *
 * @author Clair
 */
public class Contacto {

    private int id;
    private String cto_nombres,
            cto_apellidos,
            cto_cc;
    private String cto_cargo;
    private int cto_antiguedad_cargo;
    private String cto_lugar_nacimiento;
    private Date cto_fecha_nacimiento;
    private String cto_nivel_estudio,
            cto_discapacidad,
            cto_direccion,
            cto_cde,
            cto_ciudad,
            cto_pais,
            cto_celular,
            cto_fijo,
            cto_email,
            cto_email_masivo,
            cto_genero,
            cto_etnia,
            cto_condicion_desplazado,
            cto_departamento;

    //Datos de cualquier contacto
    public Contacto(int id, String cto_nombres, String cto_apellidos, String cto_cc, String cto_cargo,
            String cto_direccion, String cto_ciudad, String cto_pais, String cto_fijo, String cto_celular, String cto_email,
            String cto_email_masivo, String cto_genero, String cto_departamento) {
        this.id = id;
        this.cto_nombres = cto_nombres;
        this.cto_apellidos = cto_apellidos;
        this.cto_cc = cto_cc;
        this.cto_cargo = cto_cargo;
        this.cto_direccion = cto_direccion;
        this.cto_ciudad = cto_ciudad;
        this.cto_pais = cto_pais;
        this.cto_fijo = cto_fijo;
        this.cto_celular = cto_celular;
        this.cto_email = cto_email;
        this.cto_email_masivo = cto_email_masivo;
        this.cto_genero = cto_genero;
        this.cto_departamento = cto_departamento;
    }

    //Datos de cualquier empresa
    public Contacto(int cto_id, int cto_antiguedad_cargo, String cto_lugar_nacimiento, Date cto_fecha_nacimiento,
            String cto_nivel_estudio, String cto_discapacidad, String cto_cde, String cto_etnia,
            String cto_condicion_desplazado) {
        this.cto_antiguedad_cargo = cto_antiguedad_cargo;
        this.cto_lugar_nacimiento = cto_lugar_nacimiento;
        this.cto_fecha_nacimiento = cto_fecha_nacimiento;
        this.cto_nivel_estudio = cto_nivel_estudio;
        this.cto_discapacidad = cto_discapacidad;
        this.cto_cde = cto_cde;
        this.cto_etnia = cto_etnia;
        this.cto_condicion_desplazado = cto_condicion_desplazado;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCto_nombres() {
        return cto_nombres;
    }

    public void setCto_nombres(String cto_nombres) {
        this.cto_nombres = cto_nombres;
    }

    public String getCto_apellidos() {
        return cto_apellidos;
    }

    public void setCto_apellidos(String cto_apellidos) {
        this.cto_apellidos = cto_apellidos;
    }

    public String getCto_cc() {
        return cto_cc;
    }

    public void setCto_cc(String cto_cc) {
        this.cto_cc = cto_cc;
    }

    public String getCto_cargo() {
        return cto_cargo;
    }

    public void setCto_cargo(String cto_cargo) {
        this.cto_cargo = cto_cargo;
    }

    public int getCto_antiguedad_cargo() {
        return cto_antiguedad_cargo;
    }

    public void setCto_antiguedad_cargo(int cto_antiguedad_cargo) {
        this.cto_antiguedad_cargo = cto_antiguedad_cargo;
    }

    public String getCto_lugar_nacimiento() {
        return cto_lugar_nacimiento;
    }

    public void setCto_lugar_nacimiento(String cto_lugar_nacimiento) {
        this.cto_lugar_nacimiento = cto_lugar_nacimiento;
    }

    public Date getCto_fecha_nacimiento() {
        return cto_fecha_nacimiento;
    }

    public void setCto_fecha_nacimiento(Date cto_fecha_nacimiento) {
        this.cto_fecha_nacimiento = cto_fecha_nacimiento;
    }

    public String getCto_nivel_estudio() {
        return cto_nivel_estudio;
    }

    public void setCto_nivel_estudio(String cto_nivel_estudio) {
        this.cto_nivel_estudio = cto_nivel_estudio;
    }

    public String getCto_discapacidad() {
        return cto_discapacidad;
    }

    public void setCto_discapacidad(String cto_discapacidad) {
        this.cto_discapacidad = cto_discapacidad;
    }

    public String getCto_direccion() {
        return cto_direccion;
    }

    public void setCto_direccion(String cto_direccion) {
        this.cto_direccion = cto_direccion;
    }

    public String getCto_cde() {
        return cto_cde;
    }

    public void setCto_cde(String cto_cde) {
        this.cto_cde = cto_cde;
    }

    public String getCto_ciudad() {
        return cto_ciudad;
    }

    public void setCto_ciudad(String cto_ciudad) {
        this.cto_ciudad = cto_ciudad;
    }

    public String getCto_pais() {
        return cto_pais;
    }

    public void setCto_pais(String cto_pais) {
        this.cto_pais = cto_pais;
    }

    public String getCto_celular() {
        return cto_celular;
    }

    public void setCto_celular(String cto_celular) {
        this.cto_celular = cto_celular;
    }

    public String getCto_fijo() {
        return cto_fijo;
    }

    public void setCto_fijo(String cto_fijo) {
        this.cto_fijo = cto_fijo;
    }

    public String getCto_email() {
        return cto_email;
    }

    public void setCto_email(String cto_email) {
        this.cto_email = cto_email;
    }

    public String getCto_email_masivo() {
        return cto_email_masivo;
    }

    public void setCto_email_masivo(String cto_email_masivo) {
        this.cto_email_masivo = cto_email_masivo;
    }

    public String getCto_genero() {
        return cto_genero;
    }

    public void setCto_genero(String cto_genero) {
        this.cto_genero = cto_genero;
    }

    public String getCto_etnia() {
        return cto_etnia;
    }

    public void setCto_etnia(String cto_etnia) {
        this.cto_etnia = cto_etnia;
    }

    public String getCto_condicion_desplazado() {
        return cto_condicion_desplazado;
    }

    public void setCto_condicion_desplazado(String cto_condicion_desplazado) {
        this.cto_condicion_desplazado = cto_condicion_desplazado;
    }

    public String getCto_departamento() {
        return cto_departamento;
    }

    public void setCto_departamento(String cto_departamento) {
        this.cto_departamento = cto_departamento;
    }

}
