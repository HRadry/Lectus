package webapp.lectus.models;

import java.util.Date;

public class Parcial implements java.io.Serializable{
    
    private int idParcial;
    private String nombre;
    private Date fechaInicio;
    private Date fechaFin;
    private Date fechaLimiteEntregaAlumno;
    private Date fechaLimiteEntregaRevisor;
    private Date fechaEntregaCorreccion;

    public Parcial() {
    }

    public Parcial(int idParcial, String nombre, Date fechaInicio, Date fechaFin, Date fechaLimiteEntregaAlumno, Date fechaLimiteEntregaRevisor, Date fechaEntregaCorreccion) {
        this.idParcial = idParcial;
        this.nombre = nombre;
        this.fechaInicio = fechaInicio;
        this.fechaFin = fechaFin;
        this.fechaLimiteEntregaAlumno = fechaLimiteEntregaAlumno;
        this.fechaLimiteEntregaRevisor = fechaLimiteEntregaRevisor;
        this.fechaEntregaCorreccion = fechaEntregaCorreccion;
    }
        
    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
              
    public int getIdParcial() {
        return idParcial;
    }

    public void setIdParcial(int idParcial) {
        this.idParcial = idParcial;
    }       

    public Date getFechaInicio() {
        return fechaInicio;
    }

    public void setFechaInicio(Date fechaInicio) {
        this.fechaInicio = fechaInicio;
    }

    public Date getFechaFin() {
        return fechaFin;
    }

    public void setFechaFin(Date fechaFin) {
        this.fechaFin = fechaFin;
    }

    public Date getFechaLimiteEntregaAlumno() {
        return fechaLimiteEntregaAlumno;
    }

    public void setFechaLimiteEntregaAlumno(Date fechaLimiteEntregaAlumno) {
        this.fechaLimiteEntregaAlumno = fechaLimiteEntregaAlumno;
    }

    public Date getFechaLimiteEntregaRevisor() {
        return fechaLimiteEntregaRevisor;
    }

    public void setFechaLimiteEntregaRevisor(Date fechaLimiteEntregaRevisor) {
        this.fechaLimiteEntregaRevisor = fechaLimiteEntregaRevisor;
    }    

    public Date getFechaEntregaCorreccion() {
        return fechaEntregaCorreccion;
    }

    public void setFechaEntregaCorreccion(Date fechaEntregaCorreccion) {
        this.fechaEntregaCorreccion = fechaEntregaCorreccion;
    }        
}

