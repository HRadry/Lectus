/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package webapp.lectus.models;

/**
 *
 * @author herna
 */
public class UsuarioRevisor implements java.io.Serializable {
    
    private Integer idUsuario;
    private Integer idRevisor;
    private String nombre;
    private String apellidoPaterno;
    private String apellidoMaterno;
    private String carrera;
    private Integer idCarrera;
    private String correo;    
    private String password;
    private String tipoUsuario;
    private Integer idLibro;
    private Integer area;
    private String edificio;
    private String telefono;
    private Integer numeroEmpleado;
    private Integer numeroCubo;
    private String cargo;

    public UsuarioRevisor() {
    }

    public UsuarioRevisor(Integer idUsuario, Integer idRevisor, String nombre, String apellidoPaterno, String apellidoMaterno, String carrera, Integer idCarrera, String correo, String password, String tipoUsuario, Integer idLibro, Integer area, String edificio, String telefono, Integer numeroEmpleado, Integer numeroCubo, String cargo) {
        this.idUsuario = idUsuario;
        this.idRevisor = idRevisor;
        this.nombre = nombre;
        this.apellidoPaterno = apellidoPaterno;
        this.apellidoMaterno = apellidoMaterno;
        this.carrera = carrera;
        this.idCarrera = idCarrera;
        this.correo = correo;
        this.password = password;
        this.tipoUsuario = tipoUsuario;
        this.idLibro = idLibro;
        this.area = area;
        this.edificio = edificio;
        this.telefono = telefono;
        this.numeroEmpleado = numeroEmpleado;
        this.numeroCubo = numeroCubo;
        this.cargo = cargo;
    }

    public Integer getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(Integer idUsuario) {
        this.idUsuario = idUsuario;
    }

    public Integer getIdRevisor() {
        return idRevisor;
    }

    public void setIdRevisor(Integer idRevisor) {
        this.idRevisor = idRevisor;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellidoPaterno() {
        return apellidoPaterno;
    }

    public void setApellidoPaterno(String apellidoPaterno) {
        this.apellidoPaterno = apellidoPaterno;
    }

    public String getApellidoMaterno() {
        return apellidoMaterno;
    }

    public void setApellidoMaterno(String apellidoMaterno) {
        this.apellidoMaterno = apellidoMaterno;
    }

    public String getCarrera() {
        return carrera;
    }

    public void setCarrera(String carrera) {
        this.carrera = carrera;
    }

    public Integer getIdCarrera() {
        return idCarrera;
    }

    public void setIdCarrera(Integer idCarrera) {
        this.idCarrera = idCarrera;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getTipoUsuario() {
        return tipoUsuario;
    }

    public void setTipoUsuario(String tipoUsuario) {
        this.tipoUsuario = tipoUsuario;
    }

    public Integer getIdLibro() {
        return idLibro;
    }

    public void setIdLibro(Integer idLibro) {
        this.idLibro = idLibro;
    }

    public Integer getArea() {
        return area;
    }

    public void setArea(Integer area) {
        this.area = area;
    }

    public String getEdificio() {
        return edificio;
    }

    public void setEdificio(String edificio) {
        this.edificio = edificio;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public Integer getNumeroEmpleado() {
        return numeroEmpleado;
    }

    public void setNumeroEmpleado(Integer numeroEmpleado) {
        this.numeroEmpleado = numeroEmpleado;
    }

    public Integer getNumeroCubo() {
        return numeroCubo;
    }

    public void setNumeroCubo(Integer numeroCubo) {
        this.numeroCubo = numeroCubo;
    }

    public String getCargo() {
        return cargo;
    }

    public void setCargo(String cargo) {
        this.cargo = cargo;
    }

    @Override
    public String toString() {
        return "UsuarioRevisor{" + "idUsuario=" + idUsuario + ", idRevisor=" + idRevisor + ", nombre=" + nombre + ", apellidoPaterno=" + apellidoPaterno + ", apellidoMaterno=" + apellidoMaterno + ", carrera=" + carrera + ", idCarrera=" + idCarrera + ", correo=" + correo + ", password=" + password + ", tipoUsuario=" + tipoUsuario + ", idLibro=" + idLibro + ", area=" + area + ", edificio=" + edificio + ", telefono=" + telefono + ", numeroEmpleado=" + numeroEmpleado + ", numeroCubo=" + numeroCubo + ", cargo=" + cargo + '}';
    }

   
    
}
