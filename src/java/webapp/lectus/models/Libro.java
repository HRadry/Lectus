package webapp.lectus.models;

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

    public Libro() {
    }

    public Libro(Integer idLibro, String titulo, String autor, String genero, Integer numeroPagina, String sinopsis, Integer anoPublicacion, String edicion, String portada, String archivoPDF) {
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
}
