package Test;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import webapp.lectus.dao.LibroDao;
import webapp.lectus.models.Libro;

import webapp.lectus.dao.ParcialDao;
import webapp.lectus.models.Parcial;

public class Test {
    public static void main(String[] args) throws ParseException {
        
        // L I B R O
        /*
        Libro libro = new Libro();
        LibroDao libroDao = new LibroDao();
        
        libro.setIdLibro(48);
        libro.setTitulo("Titulo");
        libro.setAutor("Autor");
        libro.setGenero("Genero");
        libro.setNumeroPagina(1);
        libro.setSinopsis("Bla bla bla...");
        libro.setAnoPublicacion(1999);
        libro.setEdicion("Primera edición");
        libro.setPortada("img");
        libro.setArchivoPDF("PDF");
                
        libroDao.update(libro);
        //System.exit(0);
        */
        
        // F E C H A
        /*
        Fecha fecha = new Fecha();
        FechaDao fechaDao = new FechaDao();
        
        fecha.setIdFecha(2);
        fecha.setParcial("Segundo Parciales");
        
        String date1 = "2021-02-22";          
        Date dateF1 = new SimpleDateFormat("yyyy-MM-dd").parse(date1);  
        fecha.setFechaInicio(dateF1);
        
        String date2 = "2021-02-26";          
        Date dateF2 = new SimpleDateFormat("yyyy-MM-dd").parse(date2);  
        fecha.setFechaFin(dateF2);
        
        fechaDao.update(fecha);   
        */
    }
}
