package webapp.lectus.models;

public class EntregaReporte implements java.io.Serializable {

    private Integer idEntregaReporte;
    private Integer idParcial;
    private String calificacion;
    private String comentario;
    private String reportePDF;
    private Integer idAlumnoLibro;

    public EntregaReporte() {
    }

    public EntregaReporte(Integer idEntregaReporte, Integer idParcial, String calificacion, String comentario, String reportePDF, Integer idAlumnoLibro) {
        this.idEntregaReporte = idEntregaReporte;
        this.idParcial = idParcial;
        this.calificacion = calificacion;
        this.comentario = comentario;
        this.reportePDF = reportePDF;
        this.idAlumnoLibro = idAlumnoLibro;
    }

    public Integer getIdEntregaReporte() {
        return idEntregaReporte;
    }

    public void setIdEntregaReporte(Integer idEntregaReporte) {
        this.idEntregaReporte = idEntregaReporte;
    }

    public Integer getIdParcial() {
        return idParcial;
    }

    public void setIdParcial(Integer idParcial) {
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

    public Integer getIdAlumnoLibro() {
        return idAlumnoLibro;
    }

    public void setIdAlumnoLibro(Integer idAlumnoLibro) {
        this.idAlumnoLibro = idAlumnoLibro;
    }

       
}
