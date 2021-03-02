package webapp.lectus.models;

public class Alumno implements java.io.Serializable {

    private Integer idAlumno;
    private Integer idUsuario;
    private Integer idGrupo;
    private Integer matricula;
    private Double telefono;

    public Alumno() {
    }

    public Alumno(Integer idAlumno, Integer idUsuario, Integer idGrupo, Integer matricula, Double telefono) {
        this.idAlumno = idAlumno;
        this.idUsuario = idUsuario;
        this.idGrupo = idGrupo;
        this.matricula = matricula;
        this.telefono = telefono;
    }

    public Integer getIdAlumno() {
        return idAlumno;
    }

    public void setIdAlumno(Integer idAlumno) {
        this.idAlumno = idAlumno;
    }

    public Integer getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(Integer idUsuario) {
        this.idUsuario = idUsuario;
    }

    public Integer getIdGrupo() {
        return idGrupo;
    }

    public void setIdGrupo(Integer idGrupo) {
        this.idGrupo = idGrupo;
    }

    public Integer getMatricula() {
        return matricula;
    }

    public void setMatricula(Integer matricula) {
        this.matricula = matricula;
    }

    public Double getTelefono() {
        return telefono;
    }

    public void setTelefono(Double telefono) {
        this.telefono = telefono;
    }

    
}
