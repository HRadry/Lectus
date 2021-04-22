package webapp.lectus.actions;

import com.opensymphony.xwork2.ActionSupport;
import java.util.ArrayList;
import java.util.List;
import webapp.lectus.dao.LibroDao;
import webapp.lectus.models.Libro;

public class LibroAction extends ActionSupport {

    private List<Libro> libros = new ArrayList<Libro>();
    private Libro libro = new Libro();
    private int id;    
    private String mensaje;
    private String colorMensaje;
    private String nombre;
    private String idRevisor;
    private String estatus;
    @Override
    public String execute() throws Exception {               
        return SUCCESS;
    }
    
    public String list() throws Exception {        
        LibroDao libroDao = new LibroDao();
        libros = libroDao.all(getEstatus());
        return SUCCESS;
    }
    
    public String create() throws Exception {
       return SUCCESS;
    }
    
    public String store() throws Exception {        
        LibroDao libroDao = new LibroDao();
        System.out.println(libro);
        libroDao.insert(libro);
        mensaje = "El libro " + libro.getTitulo() + " ha sido agregado correctamente.";
        colorMensaje = "alert-warning";
        this.addActionMessage("El libro ha sido agregado correctamente.");
        this.addActionError("Datos incorrectos, intente de nuevo"); 
        //list();
        return SUCCESS;
    }
    
    public String details() throws Exception {        
        LibroDao libroDao = new LibroDao();
        libro = libroDao.find(getId());
      
        return SUCCESS;
    }
        
    public String edit() throws Exception {        
        LibroDao libroDao = new LibroDao();
        libro = libroDao.find(getId());
        return SUCCESS;
    }
    
    public String update() throws Exception {        
        LibroDao libroDao = new LibroDao();
        libroDao.update(libro);
        mensaje = "El libro " + libro.getTitulo() + " ha sido actualizado correctamente.";        
        colorMensaje = "alert-warning";
        this.addActionMessage("El libro ha sido actualizado correctamente.");
        this.addActionError("Datos incorrectos, intente de nuevo"); 
        return SUCCESS;
    }
    
    public String delete() throws Exception {        
        LibroDao libroDao = new LibroDao();
        libro = libroDao.find(getId());
        System.out.println(libro);
        libroDao.delete(libro);
        mensaje = "El libro " + libro.getTitulo() + " ha sido eliminado correctamente.";
        colorMensaje = "alert-warning"; 
        this.addActionMessage("El libro ha sido eliminado correctamente.");
        this.addActionError("Datos incorrectos, intente de nuevo"); 
        return SUCCESS;
    }
    
    public String panel() throws Exception {               
        return SUCCESS;
    }
    
    public String backPanel() throws Exception {               
        return SUCCESS;
    }
                        
    public List<Libro> getLibros() {
        return libros;
    }  
    
    public Libro getLibro() {
        return libro;
    }

    public void setLibro(Libro libro) {
        this.libro = libro;
    }    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getMensaje() {
        return mensaje;
    }

    public void setMensaje(String mensaje) {
        this.mensaje = mensaje;
    }

    public String getColorMensaje() {
        return colorMensaje;
    }

    public void setColorMensaje(String colorMensaje) {
        this.colorMensaje = colorMensaje;
    }      

    public String getIdRevisor() {
        return idRevisor;
    }

    public void setIdRevisor(String idRevisor) {
        this.idRevisor = idRevisor;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getEstatus() {
        return estatus;
    }

    public void setEstatus(String estatus) {
        this.estatus = estatus;
    }
}
