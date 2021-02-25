package webapp.lectus.models;

public class AlumnoLibro implements java.io.Serializable {

    private int idAlumnoLibro;
    private int idUsuario;
    private int idLibro;
    private int idRevisor;

    public AlumnoLibro() {
    }

    public AlumnoLibro(int idAlumnoLibro, int idUsuario, int idLibro, int idRevisor) {
        this.idAlumnoLibro = idAlumnoLibro;
        this.idUsuario = idUsuario;
        this.idLibro = idLibro;
        this.idRevisor = idRevisor;
    }

    public int getIdAlumnoLibro() {
        return idAlumnoLibro;
    }

    public void setIdAlumnoLibro(int idAlumnoLibro) {
        this.idAlumnoLibro = idAlumnoLibro;
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

    public int getIdRevisor() {
        return idRevisor;
    }

    public void setIdRevisor(int idRevisor) {
        this.idRevisor = idRevisor;
    }
}
