package webapp.lectus.actions;

import com.google.gson.Gson;
import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionSupport;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.apache.struts2.ServletActionContext;
import webapp.lectus.dao.AlumnoLibroDao;
import webapp.lectus.models.AlumnoLibro;
import webapp.lectus.models.Libro;
import webapp.lectus.models.Usuario;

public class AlumnoLibroAction extends ActionSupport {

    private List<Libro> libros = new ArrayList<Libro>();
    private Libro libro = new Libro();
    private AlumnoLibro alumnoLibro = new AlumnoLibro();
    private int idLibro;
    private String mensaje;
    private String style;
    private String jsonString;
    private String estatus;

    @Override
    public String execute() throws Exception {
        //call Service class to store personBean's state in database
        return SUCCESS;
    }

    public String list() throws Exception {
        AlumnoLibroDao AlumnoLibroDao = new AlumnoLibroDao();
        libros = AlumnoLibroDao.all(getEstatus());
        return SUCCESS;
    }

    public String showDetails() throws Exception {
        AlumnoLibroDao LibroDao = new AlumnoLibroDao();
        libro = LibroDao.find(getIdLibro());
        jsonString = new Gson().toJson(libro);
        System.out.println("jsonString es de tipo " + ((Object) jsonString).getClass().getSimpleName());
        System.out.println("json" + jsonString);
        return SUCCESS;
    }

    public String select() throws Exception {
        AlumnoLibroDao AlumnoLibroDao = new AlumnoLibroDao();
        AlumnoLibroDao LibroDao = new AlumnoLibroDao();
        HttpServletRequest request = ServletActionContext.getRequest();
        HttpSession session = request.getSession();
        Usuario idLogged = (Usuario) session.getAttribute("userLogged");
        alumnoLibro.setIdUsuario(idLogged.getIdUsuario());
        alumnoLibro.setIdLibro(idLibro);
        alumnoLibro.setIdRevisor(33);
        AlumnoLibroDao.seleccion(alumnoLibro);
        AlumnoLibroDao.numeroMaximoAlumnos(idLibro);
        return SUCCESS;
    }

    public List<Libro> getLibros() {
        return libros;
    }

    public void setLibros(List<Libro> libros) {
        this.libros = libros;
    }

    public Libro getLibro() {
        return libro;
    }

    public void setLibro(Libro libro) {
        this.libro = libro;
    }

    public int getIdLibro() {
        return idLibro;
    }

    public void setIdLibro(int idLibro) {
        this.idLibro = idLibro;
    }

    public String getMensaje() {
        return mensaje;
    }

    public void setMensaje(String mensaje) {
        this.mensaje = mensaje;
    }

    public String getStyle() {
        return style;
    }

    public void setStyle(String style) {
        this.style = style;
    }

    public String getJsonString() {
        return jsonString;
    }

    public void setJsonString(String jsonString) {
        this.jsonString = jsonString;
    }

    public AlumnoLibro getAlumnoLibro() {
        return alumnoLibro;
    }

    public void setAlumnoLibro(AlumnoLibro alumnoLibro) {
        this.alumnoLibro = alumnoLibro;
    }

    public String getEstatus() {
        return estatus;
    }

    public void setEstatus(String estatus) {
        this.estatus = estatus;
    }

}
