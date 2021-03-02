package webapp.lectus.models;

import java.util.Date;

public class Libro implements java.io.Serializable {

    private Integer idLibro;
    private String titulo;
    private String autor;
    private String genero;
    private Integer numeroPagina;
    private String sinopsis;
    private Integer anoPublicacion;
    private String edicion;
    private String portada;
    private String archivoPDF;
    private Integer numeroMaximoRevisores;
    private Integer numeroMaximoAlumnos;
    private Date fechaCreacion;
    private Date fechaActualizacion;
    private String estatus;
    
    

    public Libro()  {
    }

    public Libro(Integer idLibro, String titulo, String autor, String genero, Integer numeroPagina, String sinopsis, Integer anoPublicacion, String edicion, String portada, String archivoPDF, Integer numeroMaximoRevisores, Integer numeroMaximoAlumnos, Date fechaCreacion, Date fechaActualizacion, String estatus) {
        this.idLibro = idLibro;
        this.titulo = titulo;
        this.autor = autor;
        this.genero = genero;
        this.numeroPagina = numeroPagina;
        this.sinopsis = sinopsis;
        this.anoPublicacion = anoPublicacion;
        this.edicion = edicion;
        this.portada = portada;
        this.archivoPDF = archivoPDF;
        this.numeroMaximoRevisores = numeroMaximoRevisores;
        this.numeroMaximoAlumnos = numeroMaximoAlumnos;
        this.fechaCreacion = fechaCreacion;
        this.fechaActualizacion = fechaActualizacion;
        this.estatus = estatus;
    }

         

    public Integer getIdLibro() {
        return idLibro;
    }

    public void setIdLibro(Integer idLibro) {
        this.idLibro = idLibro;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getAutor() {
        return autor;
    }

    public void setAutor(String autor) {
        this.autor = autor;
    }

    public String getGenero() {
        return genero;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }

    public Integer getNumeroPagina() {
        return numeroPagina;
    }

    public void setNumeroPagina(Integer numeroPagina) {
        this.numeroPagina = numeroPagina;
    }

    public String getSinopsis() {
        return sinopsis;
    }

    public void setSinopsis(String sinopsis) {
        this.sinopsis = sinopsis;
    }

    public Integer getAnoPublicacion() {
        return anoPublicacion;
    }

    public void setAnoPublicacion(Integer anoPublicacion) {
        this.anoPublicacion = anoPublicacion;
    }

    public String getEdicion() {
        return edicion;
    }

    public void setEdicion(String edicion) {
        this.edicion = edicion;
    }        

    public String getPortada() {
        return portada;
    }

    public void setPortada(String portada) {
        this.portada = portada;
    }

    public String getArchivoPDF() {
        return archivoPDF;
    }

    public void setArchivoPDF(String archivoPDF) {
        this.archivoPDF = archivoPDF;
    }     

    public Integer getNumeroMaximoRevisores() {
        return numeroMaximoRevisores;
    }

    public void setNumeroMaximoRevisores(Integer numeroMaximoRevisores) {
        this.numeroMaximoRevisores = numeroMaximoRevisores;
    }

    public Integer getNumeroMaximoAlumnos() {
        return numeroMaximoAlumnos;
    }

    public void setNumeroMaximoAlumnos(Integer numeroMaximoAlumnos) {
        this.numeroMaximoAlumnos = numeroMaximoAlumnos;
    }

    public Date getFechaCreacion() {
        return fechaCreacion;
    }

    public void setFechaCreacion(Date fechaCreacion) {
        this.fechaCreacion = fechaCreacion;
    }

    public Date getFechaActualizacion() {
        return fechaActualizacion;
    }

    public void setFechaActualizacion(Date fechaActualizacion) {
        this.fechaActualizacion = fechaActualizacion;
    }

    public String getEstatus() {
        return estatus;
    }

    public void setEstatus(String estatus) {
        this.estatus = estatus;
    }

    @Override
    public String toString() {
        return "Libro{" + "idLibro=" + idLibro + ", titulo=" + titulo + ", autor=" + autor + ", genero=" + genero + ", numeroPagina=" + numeroPagina + ", sinopsis=" + sinopsis + ", anoPublicacion=" + anoPublicacion + ", edicion=" + edicion + ", portada=" + portada + ", archivoPDF=" + archivoPDF + ", numeroMaximoRevisores=" + numeroMaximoRevisores + ", numeroMaximoAlumnos=" + numeroMaximoAlumnos + ", fechaCreacion=" + fechaCreacion + ", fechaActualizacion=" + fechaActualizacion + ", estatus=" + estatus + '}';
    }
    
    
}
