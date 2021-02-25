package webapp.lectus.models;

public class Sugerencia {
    private int idSugerencia;
    private String titulo;
    private String autor;
    private String genero;
    private int numeroPagina;
    private String sinopsis;
    private String archivoPDF;

    public Sugerencia() {
    }

    public Sugerencia(int idSugerencia, String titulo, String autor, String genero, int numeroPagina, String sinopsis, String archivoPDF) {
        this.idSugerencia = idSugerencia;
        this.titulo = titulo;
        this.autor = autor;
        this.genero = genero;
        this.numeroPagina = numeroPagina;
        this.sinopsis = sinopsis;
        this.archivoPDF = archivoPDF;
    }    

    public int getIdSugerencia() {
        return idSugerencia;
    }

    public void setIdSugerencia(int idSugerencia) {
        this.idSugerencia = idSugerencia;
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

    public int getNumeroPagina() {
        return numeroPagina;
    }

    public void setNumeroPagina(int numeroPagina) {
        this.numeroPagina = numeroPagina;
    }    

    public String getSinopsis() {
        return sinopsis;
    }

    public void setSinopsis(String sinopsis) {
        this.sinopsis = sinopsis;
    }

    public String getArchivoPDF() {
        return archivoPDF;
    }

    public void setArchivoPDF(String archivoPDF) {
        this.archivoPDF = archivoPDF;
    }                    
}
