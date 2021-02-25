package webapp.lectus.models;

public class Alumno implements java.io.Serializable {

    private Integer idAlumno;
    private Integer idUsuario;
    private Integer idGrupo;

    public Alumno() {
    }

    public Alumno(Integer idAlumno, Integer idUsuario, Integer idGrupo) {
        this.idAlumno = idAlumno;
        this.idUsuario = idUsuario;
        this.idGrupo = idGrupo;
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
}
