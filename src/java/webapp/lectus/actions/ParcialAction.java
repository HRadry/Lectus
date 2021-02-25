package webapp.lectus.actions;

import com.opensymphony.xwork2.ActionSupport;
import java.util.ArrayList;
import java.util.List;
import webapp.lectus.dao.ParcialDao;
import webapp.lectus.models.Parcial;

public class ParcialAction extends ActionSupport {
    
    private List<Parcial> parciales = new ArrayList<Parcial>();
    private Parcial parcial = new Parcial();
    private int id;
    
    @Override
    public String execute() throws Exception {                
        return SUCCESS;
    }
    
    public String list() throws Exception {        
        ParcialDao parcialDao = new ParcialDao();
        parciales = parcialDao.all();
        return SUCCESS;
    }
    
    public String edit() throws Exception {        
        ParcialDao parcialDao = new ParcialDao();
        parcial = parcialDao.find(getId());
        return SUCCESS;
    }
    
    public String update() throws Exception {        
        ParcialDao parcialDao = new ParcialDao();
        parcialDao.update(parcial);
        return SUCCESS;
    }
    
    public String backPanel() throws Exception {               
        return SUCCESS;
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

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }       
}
