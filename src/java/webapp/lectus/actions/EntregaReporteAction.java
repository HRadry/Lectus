package webapp.lectus.actions;

import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.inject.Container;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import webapp.lectus.dao.EntregaReporteDao;
import webapp.lectus.dao.ParcialDao;
import webapp.lectus.dao.UsuarioDao;
import webapp.lectus.models.EntregaReporte;
import webapp.lectus.models.Parcial;
import webapp.lectus.models.Usuario;
import webapp.lectus.models.UsuarioAlumno;

public class EntregaReporteAction extends ActionSupport {
    
    private List<UsuarioAlumno> usuarioAlumno = new ArrayList<UsuarioAlumno>();
    private Usuario usuario = new Usuario();
    private EntregaReporte entregaReporte = new EntregaReporte();   
    private List<Parcial> parciales = new ArrayList<Parcial>();
    private Parcial parcial = new Parcial();
    private String tipoUsuario;
    private int id;
    private String mensaje;
    private String style;
    private Date fechaLimite;

    @Override
    public String execute() throws Exception {
        ParcialDao parcialDao = new ParcialDao();
        parcial = parcialDao.findParcial();
        fechaLimite=parcial.getFechaLimiteEntregaAlumno();
        return SUCCESS;
    }
    
    public String list() throws Exception {
        UsuarioDao UsuarioDao = new UsuarioDao();
        usuarioAlumno = UsuarioDao.all(getTipoUsuario());
        return SUCCESS;
    }
        
    public String create() throws Exception {
        return SUCCESS;
    }
    
    public String calificar() throws Exception {
        EntregaReporteDao EntregaReporteDao=new EntregaReporteDao();
        EntregaReporteDao.insert(entregaReporte);
        mensaje = usuario.getNombre() + " se registró exitosamente en la lista de contactos";
        return SUCCESS;
    }

    public List<UsuarioAlumno> getUsuarioAlumno() {
        return usuarioAlumno;
    }

    public void setUsuarioAlumno(List<UsuarioAlumno> usuarioAlumno) {
        this.usuarioAlumno = usuarioAlumno;
    }
        
    
    public EntregaReporte getEntregaReporte() {
        return entregaReporte;
    }

    public void setEntregaReporte(EntregaReporte entregaReporte) {
        this.entregaReporte = entregaReporte;
    }

    public String getTipoUsuario() {
        return tipoUsuario;
    }

    public void setTipoUsuario(String tipoUsuario) {
        this.tipoUsuario = tipoUsuario;
    }

    public Usuario getUsuario() {
        return usuario;
    }
    
    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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

    public List<Parcial> getParciales() {
        return parciales;
    }

    public void setParciales(List<Parcial> parciales) {
        this.parciales = parciales;
    }

    public Parcial getParcial() {
        return parcial;
    }

    public void setParcial(Parcial parcial) {
        this.parcial = parcial;
    }

    public Date getFechaLimite() {
        return fechaLimite;
    }

    public void setFechaLimite(Date fechaLimite) {
        this.fechaLimite = fechaLimite;
    }
    
    
}