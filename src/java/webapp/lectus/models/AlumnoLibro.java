package webapp.lectus.models;

public class AlumnoLibro implements java.io.Serializable {

    private Integer idAlumnoLibro;
    private Integer idUsuario;
    private Integer idLibro;
    private Integer idRevisor;

    public AlumnoLibro() {
    }

    public AlumnoLibro(Integer idAlumnoLibro, Integer idUsuario, Integer idLibro, Integer idRevisor) {
        this.idAlumnoLibro = idAlumnoLibro;
        this.idUsuario = idUsuario;
        this.idLibro = idLibro;
        this.idRevisor = idRevisor;
    }

    public Integer getIdAlumnoLibro() {
        return idAlumnoLibro;
    }

    public void setIdAlumnoLibro(Integer idAlumnoLibro) {
        this.idAlumnoLibro = idAlumnoLibro;
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

    public Integer getIdRevisor() {
        return idRevisor;
    }

    public void setIdRevisor(Integer idRevisor) {
        this.idRevisor = idRevisor;
    }

   
}
