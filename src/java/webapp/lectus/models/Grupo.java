package webapp.lectus.models;

public class Grupo implements java.io.Serializable {

    private Integer idGrupo;
    private String grupo;
    private String semestre;

    public Grupo() {
    }

    public Grupo(Integer idGrupo, String grupo, String semestre) {
        this.idGrupo = idGrupo;
        this.grupo = grupo;
        this.semestre = semestre;
    }

    public Integer getIdGrupo() {
        return idGrupo;
    }

    public void setIdGrupo(Integer idGrupo) {
        this.idGrupo = idGrupo;
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



