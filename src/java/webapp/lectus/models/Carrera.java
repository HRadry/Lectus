package webapp.lectus.models;

public class Carrera implements java.io.Serializable {

    private Integer idCarrera;
    private String nombre;

    public Carrera() {
    }

    public Carrera(Integer idCarrera, String nombre) {
        this.idCarrera = idCarrera;
        this.nombre = nombre;
    }

    public Integer getIdCarrera() {
        return idCarrera;
    }

    public void setIdCarrera(Integer idCarrera) {
        this.idCarrera = idCarrera;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    @Override
    public String toString() {
        return "Carrera{" + "idCarrera=" + idCarrera + ", nombre=" + nombre + '}';
    }
    
}
