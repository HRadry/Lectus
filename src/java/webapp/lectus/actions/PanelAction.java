package webapp.lectus.actions;

import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionSupport;

public class PanelAction extends ActionSupport {
    
    
    @Override
    public String execute() throws Exception {        
        return SUCCESS;
    }
    
    //Para dirigirse al panel administrador
    public String administrador() throws Exception {        
        return SUCCESS;
    }        
    //Para dirigirse al panel revisor
    public String revisor() throws Exception {        
        return SUCCESS;
    }
    //Para dirigirse al panel alumno
    public String alumno() throws Exception {        
        return SUCCESS;
    }
}