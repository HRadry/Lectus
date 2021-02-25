package webapp.lectus.models;

public class Grupo implements java.io.Serializable {

    private int idGrupo;
    private int idCarrera;
    private String grupo;
    private String semestre;

    public Grupo() {
    }

    public Grupo(int idGrupo, int idCarrera, String grupo, String semestre) {
        this.idGrupo = idGrupo;
        this.idCarrera = idCarrera;
        this.grupo = grupo;
        this.semestre = semestre;
    }

    public int getIdGrupo() {
        return idGrupo;
    }

    public void setIdGrupo(int idGrupo) {
        this.idGrupo = idGrupo;
    }

    public int getIdCarrera() {
        return idCarrera;
    }

    public void setIdCarrera(int idCarrera) {
        this.idCarrera = idCarrera;
    }

    public String getGrupo() {
        return grupo;
    }

    public void setGrupo(String grupo) {
        this.grupo = grupo;
    }

    public String getSemestre() {
        return semestre;
    }

    public void setSemestre(String semestre) {
        this.semestre = semestre;
    }       
}



