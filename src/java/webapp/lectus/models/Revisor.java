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
    private int idRevisor;
    private int idUsuario;
    private int idLibro;

    public Revisor() {
    }

    public Revisor(int idRevisor, int idUsuario, int idLibro) {
        this.idRevisor = idRevisor;
        this.idUsuario = idUsuario;
        this.idLibro = idLibro;
    }

    public int getIdRevisor() {
        return idRevisor;
    }

    public void setIdRevisor(int idRevisor) {
        this.idRevisor = idRevisor;
    }

    public int getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }

    public int getIdLibro() {
        return idLibro;
    }

    public void setIdLibro(int idLibro) {
        this.idLibro = idLibro;
    }

    @Override
    public String toString() {
        return "Revisor{" + "idRevisor=" + idRevisor + ", idUsuario=" + idUsuario + ", idLibro=" + idLibro + '}';
    }
    
    
    
}
