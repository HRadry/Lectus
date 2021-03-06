package webapp.lectus.actions;

import static com.opensymphony.xwork2.Action.INPUT;
import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionSupport;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletContext;
import org.apache.commons.io.FileUtils;
import webapp.lectus.dao.LibroDao;
import webapp.lectus.models.Libro;

public class SugerenciaAction extends ActionSupport {

    private List<Libro> libros = new ArrayList<Libro>();
    private Libro libro = new Libro();
    private int id;
    private String mensaje;
    private String colorMensaje;
    private String mensajeDisponibilidad;
    private String estatus;

    /**
     * ***********************************************
     */
    /**
     * ***********************************************
     */
    @Override
    public String execute() throws Exception {
        return SUCCESS;
    }

    public String list() throws Exception {
        LibroDao libroDao = new LibroDao();
        libros = libroDao.all(getEstatus());
        System.out.println("Aquí están tus libros" + libros);
        return SUCCESS;
    }

    public String create() throws Exception {
        return SUCCESS;
    }

    private File userImage;
    private String userImageFileName;
    private ServletContext servletContext;
    private String destPath;

    public void setServletContext(ServletContext context) {
        servletContext = context;
    }

    public File getUserImage() {
        return userImage;
    }

    public void setUserImage(File userImage) {
        this.userImage = userImage;
    }

    public String getUserImageFileName() {
        return userImageFileName;
    }

    public void setUserImageFileName(String userImageFileName) {
        this.userImageFileName = userImageFileName;
    }

    public String store() throws Exception {
        LibroDao libroDao = new LibroDao();
        System.out.println(libro);
        libro.setArchivoPDF(this.getUserImageFileName());

        destPath = "C:/Users/Javier/Documents/NetBeansProjects/LectuS/web/libros/";
        try {
            File fileToCreate = new File(destPath, this.userImageFileName);

            FileUtils.copyFile(this.userImage, fileToCreate);
        } catch (Exception e) {
            e.printStackTrace();
            addActionError(e.getMessage());
            return INPUT;
        }

        libroDao.insert(libro);
        System.out.println("Aquí*************/////////***************/////////" + libro);
        mensaje = "El libro " + libro.getTitulo() + " ha sido agregado correctamente.";
        colorMensaje = "alert-warning";
        return SUCCESS;
    }

    public String details() throws Exception {
        LibroDao libroDao = new LibroDao();
        libro = libroDao.find(getId());      
        
        if (libro.getSinopsis() == null) {
            mensajeDisponibilidad = "El usuario no añadió un descipción del libro";
        }
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

    public String getMensajeDisponibilidad() {
        return mensajeDisponibilidad;
    }

    public void setMensajeDisponibilidad(String mensajeDisponibilidad) {
        this.mensajeDisponibilidad = mensajeDisponibilidad;
    }

    public String getEstatus() {
        return estatus;
    }

    public void setEstatus(String estatus) {
        this.estatus = estatus;
    }
}
