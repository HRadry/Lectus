package webapp.lectus.models;

public class EntregaReporte implements java.io.Serializable {

    private int idEntregaReporte;
    private int idAlumno;
    private int idParcial;
    private String calificacion;
    private String comentario;
    private String reportePDF;
    private int idAlumnoLibro;

    public EntregaReporte() {
    }

    public EntregaReporte(int idEntregaReporte, int idAlumno, int idParcial, String calificacion, String comentario, String reportePDF, int idAlumnoLibro) {
        this.idEntregaReporte = idEntregaReporte;
        this.idAlumno = idAlumno;
        this.idParcial = idParcial;
        this.calificacion = calificacion;
        this.comentario = comentario;
        this.reportePDF = reportePDF;
        this.idAlumnoLibro = idAlumnoLibro;
    }    

    public int getIdEntregaReporte() {
        return idEntregaReporte;
    }

    public void setIdEntregaReporte(int idEntregaReporte) {
        this.idEntregaReporte = idEntregaReporte;
    }

    public int getIdAlumno() {
        return idAlumno;
    }

    public void setIdAlumno(int idAlumno) {
        this.idAlumno = idAlumno;
    }

    public int getIdParcial() {
        return idParcial;
    }

    public void setIdParcial(int idParcial) {
        this.idParcial = idParcial;
    }

    public String getCalificacion() {
        return calificacion;
    }

    public void setCalificacion(String calificacion) {
        this.calificacion = calificacion;
    }

    public String getComentario() {
        return comentario;
    }

    public void setComentario(String comentario) {
        this.comentario = comentario;
    }

    public String getReportePDF() {
        return reportePDF;
    }

    public void setReportePDF(String reportePDF) {
        this.reportePDF = reportePDF;
    }
    
    public int getIdAlumnoLibro() {
        return idAlumnoLibro;
    }

    public void setIdAlumnoLibro(int idAlumnoLibro) {
        this.idAlumnoLibro = idAlumnoLibro;
    }
}
