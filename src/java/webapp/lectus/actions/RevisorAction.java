package webapp.lectus.actions;

import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionSupport;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.HibernateException;
import webapp.lectus.dao.AreaDao;
import webapp.lectus.dao.CarreraDao;
import webapp.lectus.dao.RevisorDao;
import webapp.lectus.dao.UsuarioDao;
import webapp.lectus.models.Area;
import webapp.lectus.models.Carrera;
import webapp.lectus.models.Revisor;
import webapp.lectus.models.Usuario;
import webapp.lectus.models.UsuarioRevisor;

public class RevisorAction extends ActionSupport {
    
    private List<Area> areas = new ArrayList<Area>();
    private List<Carrera> carreras = new ArrayList<Carrera>();
    private List<UsuarioRevisor> usuarioRevisor = new ArrayList<UsuarioRevisor>();
    
    private Area area = new Area();
    private Carrera carrera = new Carrera();
    private Revisor revisor = new Revisor();
    private Usuario usuario = new Usuario();
    private UsuarioRevisor UsuarioTipoRevisor = new UsuarioRevisor();
        
    private String tipoUsuario;
    
    
    private int idRevisor;
    private int idLibro;
    private int id;
   
    private String mensaje;
    private String style;

    @Override
    public String execute() throws Exception {
        return SUCCESS;
    }

    
    public String list() throws Exception {
        RevisorDao RevisorDao = new RevisorDao();
        usuarioRevisor = RevisorDao.all(getTipoUsuario());
        return SUCCESS;
    }
     
    public String create() throws Exception {
        AreaDao areaDao=new AreaDao();
        CarreraDao carreraDao=new CarreraDao();
        areas = areaDao.all();        
        carreras = carreraDao.all();
        return SUCCESS;
    }
    
    public String store() throws Exception {
        UsuarioDao usuarioDao=new UsuarioDao();
        RevisorDao revisorDao=new RevisorDao();
      
        int idUsuario = usuarioDao.insert(usuario);
        
        revisor.setIdUsuario(idUsuario);        
        revisorDao.insert(revisor);
        
        mensaje = usuario.getNombre() + " se registró exitosamente en la lista de contactos";
        return SUCCESS;
    }
     
    public String asignar() throws Exception {
        try{
        RevisorDao revisorDao = new RevisorDao();
        System.out.println("IdRevisor:::::: " + getIdRevisor() + getIdLibro());
        revisor.setIdUsuario(getIdRevisor());
        revisor.setIdLibro(getIdLibro());
        revisorDao.insert(revisor);
        //this.addActionError("Correcto");
        
        }catch(HibernateException he){
            //this.addActionMessage("Ya le ha asignado un libro a este revisor");
            System.out.println("Error");
            
        }
        return SUCCESS;
    }

    
    public String details() throws Exception {
        RevisorDao RevisorDao=new RevisorDao();
        CarreraDao CarreraDao= new CarreraDao();
        UsuarioTipoRevisor = RevisorDao.find(getId());
        carreras = CarreraDao.all();
        return SUCCESS;
    }
    
    public String edit() throws Exception {
        RevisorDao RevisorDao=new RevisorDao();
        AreaDao areaDao=new AreaDao();
        CarreraDao carreraDao=new CarreraDao();
        areas = areaDao.all();        
        carreras = carreraDao.all();
        UsuarioTipoRevisor = RevisorDao.find(getId());
        return SUCCESS;
    }
    
    public String update() throws Exception {        
        UsuarioDao UsuarioDao=new UsuarioDao();
        RevisorDao RevisorDao = new RevisorDao();
        UsuarioDao.update(usuario);
        RevisorDao.update(revisor);
        return SUCCESS;
    }
      
    public String delete() throws Exception {        
       /* UsuarioDao UsuarioDao=new UsuarioDao();
        revisor = UsuarioDao.find(getId());
        UsuarioDao.delete(usuario);
        style = "alert-danger";
        mensaje="El alumno " + usuario.getNombre() +" fue eliminado correctamente";*/
        return SUCCESS;
    }
     
    public Revisor getRevisor() {
        return revisor;
    }

    public void setRevisor(Revisor revisor) {
        this.revisor = revisor;
    }

    public int getIdRevisor() {
        return idRevisor;
    }

    public void setIdRevisor(int idRevisor) {
        this.idRevisor = idRevisor;
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

    public int getIdLibro() {
        return idLibro;
    }

    public void setIdLibro(int idLibro) {
        this.idLibro = idLibro;
    }

    public List<Area> getAreas() {
        return areas;
    }

    public void setAreas(List<Area> areas) {
        this.areas = areas;
    }

    public Area getArea() {
        return area;
    }

    public void setArea(Area area) {
        this.area = area;
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

    public String getTipoUsuario() {
        return tipoUsuario;
    }

    public void setTipoUsuario(String tipoUsuario) {
        this.tipoUsuario = tipoUsuario;
    }

    public List<UsuarioRevisor> getUsuarioRevisor() {
        return usuarioRevisor;
    }

    public void setUsuarioRevisor(List<UsuarioRevisor> usuarioRevisor) {
        this.usuarioRevisor = usuarioRevisor;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public UsuarioRevisor getUsuarioTipoRevisor() {
        return UsuarioTipoRevisor;
    }

    public void setUsuarioTipoRevisor(UsuarioRevisor UsuarioTipoRevisor) {
        this.UsuarioTipoRevisor = UsuarioTipoRevisor;
    }
}
