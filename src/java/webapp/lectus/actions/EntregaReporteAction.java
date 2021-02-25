package webapp.lectus.actions;

import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.inject.Container;
import java.util.ArrayList;
import java.util.List;
import webapp.lectus.dao.EntregaReporteDao;
import webapp.lectus.dao.UsuarioDao;
import webapp.lectus.models.EntregaReporte;
import webapp.lectus.models.Usuario;

public class EntregaReporteAction extends ActionSupport {
    
    private List<Usuario> usuarios = new ArrayList<Usuario>();
    private Usuario usuario = new Usuario();
    private EntregaReporte entregaReporte = new EntregaReporte();    
    private String tipoUsuario;
    private int id;
    private String mensaje;
    private String style;

    @Override
    public String execute() throws Exception {
        //call Service class to store personBean's state in database

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
    
    public String calificar() throws Exception {
        EntregaReporteDao EntregaReporteDao=new EntregaReporteDao();
        EntregaReporteDao.insert(entregaReporte);
        mensaje = usuario.getNombre() + " se registró exitosamente en la lista de contactos";
        return SUCCESS;
    }
        
    public List<Usuario> getUsuarios() {
        return usuarios;
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
}