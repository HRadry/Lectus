package webapp.lectus.actions;

import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.inject.Container;
import org.hibernate.HibernateException;
import webapp.lectus.dao.RevisorDao;
import webapp.lectus.models.Revisor;
import webapp.lectus.models.Usuario;

public class RevisorAction extends ActionSupport {

    private Revisor revisor = new Revisor();
    private int idRevisor;
    private int idLibro;
    private String check;
    private String[] countriesSelected;
    private String mensaje;
    private String style;

    @Override
    public String execute() throws Exception {

        return SUCCESS;
    }

    /*
    public String list() throws Exception {
        UsuarioDao UsuarioDao = new UsuarioDao();
        usuarios = UsuarioDao.all(getTipoUsuario());
        
        return SUCCESS;
    }
        
    public String create() throws Exception {
        return SUCCESS;
    }*/
    /*public boolean isCheckboxSimple() {
        return check;
    }*/

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

    /*
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
     */
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

    public String[] getCountriesSelected() {
        return countriesSelected;
    }

    public void setCountriesSelected(String[] countriesSelected) {
        this.countriesSelected = countriesSelected;
    }

    public int getIdLibro() {
        return idLibro;
    }

    public void setIdLibro(int idLibro) {
        this.idLibro = idLibro;
    }
    
}
