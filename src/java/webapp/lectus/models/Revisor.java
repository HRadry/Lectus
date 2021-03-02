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
public class Revisor implements java.io.Serializable{
    private Integer idRevisor;
    private Integer idUsuario;
    private Integer idLibro;
    private Integer idArea;
    private Integer numeroEmpleado;
    private Integer numeroCubo;
    private String cargo;
            

    public Revisor() {
    }

    public Revisor(Integer idRevisor, Integer idUsuario, Integer idLibro, Integer idArea, Integer numeroEmpleado, Integer numeroCubo, String cargo) {
        this.idRevisor = idRevisor;
        this.idUsuario = idUsuario;
        this.idLibro = idLibro;
        this.idArea = idArea;
        this.numeroEmpleado = numeroEmpleado;
        this.numeroCubo = numeroCubo;
        this.cargo = cargo;
    }
    

    public Integer getIdRevisor() {
        return idRevisor;
    }

    public void setIdRevisor(Integer idRevisor) {
        this.idRevisor = idRevisor;
    }

    public Integer getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(Integer idUsuario) {
        this.idUsuario = idUsuario;
    }

    public Integer getIdLibro() {
        return idLibro;
    }

    public void setIdLibro(Integer idLibro) {
        this.idLibro = idLibro;
    }

    public Integer getIdArea() {
        return idArea;
    }

    public void setIdArea(Integer idArea) {
        this.idArea = idArea;
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
}
