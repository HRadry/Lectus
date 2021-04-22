package webapp.lectus.actions;

import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.inject.Container;
import java.util.ArrayList;
import java.util.List;
import webapp.lectus.dao.AlumnoDao;
import webapp.lectus.dao.CarreraDao;
import webapp.lectus.dao.GrupoDao;
import webapp.lectus.dao.UsuarioDao;
import webapp.lectus.models.Alumno;
import webapp.lectus.models.Carrera;
import webapp.lectus.models.Grupo;
import webapp.lectus.models.Usuario;
import webapp.lectus.models.UsuarioAlumno;

public class AlumnoAction extends ActionSupport {
    
    private List<UsuarioAlumno> usuarioAlumno = new ArrayList<UsuarioAlumno>();
    private List<Carrera> carreras = new ArrayList<Carrera>();
    
    private Alumno alumno = new Alumno();
    private Carrera carrera = new Carrera();
    private Grupo grupo = new Grupo();
    private Usuario usuario = new Usuario();
    private UsuarioAlumno UsuarioTipoAlumno = new UsuarioAlumno();
    
   
    private String idRevisor;
    private String nombreRevisor;
    private String tipoUsuario;
    private String mensaje;
    private String style;
    
    private int id;
      
    @Override
    public String execute() throws Exception {        
        return SUCCESS;
    }
    
    public String list() throws Exception {
        UsuarioDao UsuarioDao = new UsuarioDao();
        usuarioAlumno = UsuarioDao.all(getTipoUsuario());
        return SUCCESS;
    }
        
    public String create() throws Exception {
        CarreraDao carreraDao=new CarreraDao();
        carreras = carreraDao.all();
        return SUCCESS;
    }
    
    public String store() throws Exception {
        UsuarioDao usuarioDao=new UsuarioDao();
        GrupoDao grupoDao=new GrupoDao();
        AlumnoDao alumnoDao= new AlumnoDao();
        int idUsuario= usuarioDao.insert(usuario);
        int idGrupo= grupoDao.insert(grupo);
        alumno.setIdUsuario(idUsuario);
        alumno.setIdGrupo(idGrupo);
        alumnoDao.insert(alumno);
        return SUCCESS;
    }
    
    public String details() throws Exception {
        UsuarioDao UsuarioDao=new UsuarioDao();
        CarreraDao CarreraDao= new CarreraDao();
        UsuarioTipoAlumno = UsuarioDao.find(getId());
        carreras = CarreraDao.all();
        return SUCCESS;
    }
    
    public String edit() throws Exception {
        UsuarioDao UsuarioDao=new UsuarioDao();
        CarreraDao CarreraDao= new CarreraDao();
        UsuarioTipoAlumno = UsuarioDao.find(getId());
        carreras = CarreraDao.all();
        return SUCCESS;
    }
    
    public String update() throws Exception {        
        UsuarioDao UsuarioDao=new UsuarioDao();
        GrupoDao grupoDao=new GrupoDao();
        AlumnoDao alumnoDao= new AlumnoDao();
        UsuarioDao.update(usuario);
        grupoDao.update(grupo);
        alumnoDao.update(alumno);
        return SUCCESS;
    }
        
    public String delete() throws Exception {        
        UsuarioDao UsuarioDao=new UsuarioDao();
        UsuarioDao.delete(getId());
        style = "alert-danger";
        mensaje="El alumno " + usuario.getNombre() +" fue eliminado correctamente";
        return SUCCESS;
    }
    
    
    //Setter & Getter//
    
    public List<UsuarioAlumno> getUsuarioAlumno() {
        return usuarioAlumno;
    }

    public void setUsuarioAlumno(List<UsuarioAlumno> usuarioAlumno) {
        this.usuarioAlumno = usuarioAlumno;
    }
    
    public List<Carrera> getCarreras() {
        return carreras;
    }

    public void setCarreras(List<Carrera> carreras) {
        this.carreras = carreras;
    }

    public Carrera getCarrera() {
        return carrera;
    }

    public void setCarrera(Carrera carrera) {
        this.carrera = carrera;
    }

    public Usuario getUsuario() {
        return usuario;
    }
    
    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }

    public Alumno getAlumno() {
        return alumno;
    }

    public void setAlumno(Alumno alumno) {
        this.alumno = alumno;
    }

    public Grupo getGrupo() {
        return grupo;
    }

    public void setGrupo(Grupo grupo) {
        this.grupo = grupo;
    }
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTipoUsuario() {
        return tipoUsuario;
    }

    public void setTipoUsuario(String tipoUsuario) {
        this.tipoUsuario = tipoUsuario;
    }

    public String getIdRevisor() {
        return idRevisor;
    }

    public void setIdRevisor(String idRevisor) {
        this.idRevisor = idRevisor;
    }

    public String getNombreRevisor() {
        return nombreRevisor;
    }

    public void setNombreRevisor(String nombreRevisor) {
        this.nombreRevisor = nombreRevisor;
    }
    
    public Container getContainer() {
        return container;
    }

    public void setContainer(Container container) {
        this.container = container;
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

    public UsuarioAlumno getUsuarioTipoAlumno() {
        return UsuarioTipoAlumno;
    }

    public void setUsuarioTipoAlumno(UsuarioAlumno UsuarioTipoAlumno) {
        this.UsuarioTipoAlumno = UsuarioTipoAlumno;
    }
    
    
}









	
