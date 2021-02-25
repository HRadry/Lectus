package webapp.lectus.actions;

import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.inject.Container;
import java.util.ArrayList;
import java.util.List;
import webapp.lectus.dao.UsuarioDao;
import webapp.lectus.models.Alumno;
import webapp.lectus.models.Carrera;
import webapp.lectus.models.Grupo;
import webapp.lectus.models.Usuario;

public class UsuarioAction extends ActionSupport {
    
    private List<Usuario> usuarios = new ArrayList<Usuario>();
    private List<Carrera> carreras = new ArrayList<Carrera>();
    private Alumno alumno = new Alumno();
    private Grupo grupo = new Grupo();
    private Usuario usuario = new Usuario();
    private Carrera carrera = new Carrera();
    private int id;
    private String idRevisor;
    private String nombreRevisor;
    private String tipoUsuario;
    private String carreraEncontrada;
    private String mensaje;
    private String style;
                 
    @Override
    public String execute() throws Exception {        
        return SUCCESS;
    }
    
    public String list() throws Exception {
        UsuarioDao UsuarioDao = new UsuarioDao();
        usuarios = UsuarioDao.all(getTipoUsuario());
        return SUCCESS;
    }
        
    public String create() throws Exception {
        return SUCCESS;
    }
    
    public String store() throws Exception {
        UsuarioDao UsuarioDao=new UsuarioDao();
        int idRegUsuario= UsuarioDao.insert(usuario);
        mensaje = usuario.getNombre() + " se registró exitosamente en la lista de contactos";
        return SUCCESS;
    }
    
    public String details() throws Exception {
        UsuarioDao UsuarioDao=new UsuarioDao();
        usuario = UsuarioDao.find(getId());
        carreras = UsuarioDao.carreras();
        return SUCCESS;
    }
    
    public String edit() throws Exception {
        UsuarioDao UsuarioDao=new UsuarioDao();
        usuario = UsuarioDao.find(getId());
        carreras = UsuarioDao.carreras();
        return SUCCESS;
    }
    
    public String update() throws Exception {        
        UsuarioDao UsuarioDao=new UsuarioDao();
        UsuarioDao.update(usuario);
        return SUCCESS;
    }
        
    public String delete() throws Exception {        
        UsuarioDao UsuarioDao=new UsuarioDao();
        usuario = UsuarioDao.find(getId());
        UsuarioDao.delete(usuario);
        style = "alert-danger";
        mensaje="El alumno " + usuario.getNombre() +" fue eliminado correctamente";
        return SUCCESS;
    }
    
    public String administrador() throws Exception {        
        return SUCCESS;
    }        
    
    public String revisor() throws Exception {        
        return SUCCESS;
    }
    
    public String alumno() throws Exception {        
        return SUCCESS;
    }
    
    public List<Usuario> getUsuarios() {
        return usuarios;
    }  

    public List<Carrera> getCarreras() {
        return carreras;
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


    public String getCarreraEncontrada() {
        return carreraEncontrada;
    }

    public void setCarreraEncontrada(String carreraEncontrada) {
        this.carreraEncontrada = carreraEncontrada;
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
}









	
