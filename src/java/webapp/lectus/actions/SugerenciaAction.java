package webapp.lectus.actions;

import static com.opensymphony.xwork2.Action.INPUT;
import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionSupport;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletContext;
import org.apache.commons.io.FileUtils;
import webapp.lectus.dao.SugerenciaDao;
import webapp.lectus.models.Sugerencia;

public class SugerenciaAction extends ActionSupport {

    private List<Sugerencia> sugerencias = new ArrayList<Sugerencia>();
    private Sugerencia sugerencia = new Sugerencia();
    private int id;    
    private String mensaje;
    private String colorMensaje;
    
    @Override
    public String execute() throws Exception {               
        return SUCCESS;
    }
    
    public String list() throws Exception {        
        SugerenciaDao sugerenciaDao = new SugerenciaDao();
        sugerencias = sugerenciaDao.all();
        System.out.println("Aquí están tus sugerencias" + sugerencias);
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
        SugerenciaDao sugerenciaDao = new SugerenciaDao();
        System.out.println(sugerencia);
        sugerencia.setArchivoPDF(this.getUserImageFileName());
        
        destPath = "C:/Users/Javier/Documents/NetBeansProjects/Struts/LectuS/build/web/sugerencias/";
        try {                                  
            File fileToCreate = new File(destPath, this.userImageFileName);

            FileUtils.copyFile(this.userImage, fileToCreate);
        } catch (Exception e) {
            e.printStackTrace();
            addActionError(e.getMessage());
            return INPUT;
        }        
        
        sugerenciaDao.insert(sugerencia);
        mensaje = "El libro " + sugerencia.getTitulo() + " ha sido agregado correctamente.";
        colorMensaje = "alert-warning";
        return SUCCESS;
    }
    
    public String details() throws Exception {        
        SugerenciaDao sugerenciaDao = new SugerenciaDao();
        sugerencia = sugerenciaDao.find(getId());
        return SUCCESS;
    }
        
    public String edit() throws Exception {        
        SugerenciaDao sugerenciaDao = new SugerenciaDao();
        sugerencia = sugerenciaDao.find(getId());
        return SUCCESS;
    }
        
    public String delete() throws Exception {        
        SugerenciaDao sugerenciaDao = new SugerenciaDao();
        sugerencia = sugerenciaDao.find(getId());
        System.out.println(sugerencia);
        sugerenciaDao.delete(sugerencia);
        mensaje = "El libro " + sugerencia.getTitulo() + " ha sido eliminado correctamente.";
        colorMensaje = "alert-warning";        
        return SUCCESS;
    }
    
    public String panel() throws Exception {               
        return SUCCESS;
    }
    
    public String backPanel() throws Exception {               
        return SUCCESS;
    }

    public List<Sugerencia> getSugerencias() {
        return sugerencias;
    }

    public Sugerencia getSugerencia() {
        return sugerencia;
    }

    public void setSugerencia(Sugerencia sugerencia) {
        this.sugerencia = sugerencia;
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
}
