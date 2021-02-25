package webapp.lectus.actions;

import static com.opensymphony.xwork2.Action.ERROR;
import static com.opensymphony.xwork2.Action.SUCCESS;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import webapp.lectus.models.Usuario;
import webapp.lectus.dao.LoginDao;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.dispatcher.SessionMap;
import org.apache.struts2.interceptor.SessionAware;

public class LoginAction extends ActionSupport implements SessionAware {

    private static final long serialVersionUID = 1L;

    private Map<String, Object> sessionMap;
    LoginDao loginDao = new LoginDao();
    Usuario userLogged = new Usuario();

    private int matricula;
    private String password;
    
    Usuario userField;
    
    //Results para redirigir 
    String alumno = "alumno";
    String revisor = "revisor";
    String administrador = "administrador";

    public int getMatricula() {
        return matricula;
    }

    public void setMatricula(int matricula) {
        this.matricula = matricula;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
    public String execute(){
        return SUCCESS;
    }
                 
    /*public String loginRegister() {
        
        if (loginDao.find(this.getMatricula(), this.getPassword())) {
            userLogged = loginDao.findUser(this.getMatricula());

            sessionMap.put("userName", this.getPassword());//userLogged
            
            return SUCCESS;
        } else {
            this.addActionError("Datos incorrectos, intente de nuevo");
            return INPUT;
        }   
    }*/
    
     public String loginRegister() throws Exception {
        userLogged = loginDao.find(this.getMatricula(), this.getPassword());
        if (userLogged != null) {
            sessionMap.put("userLogged", userLogged);//userLogged
            System.out.println("prueba session in: " + sessionMap.get("userName"));
            if ("Alumno".equals(userLogged.getTipoUsuario())) {
                return alumno;
            } else if ("Revisor".equals(userLogged.getTipoUsuario())) {
                return revisor;
            } else if ("Administrador".equals(userLogged.getTipoUsuario())) {
                return administrador;
            }
        } else {
            this.addActionError("Datos incorrectos, intente de nuevo");
        }
        return INPUT;
    }

    public String logout() {       
        sessionMap.remove("userName");        
        return SUCCESS;
    }

    @Override
    public void setSession(Map<String, Object> sessionMap) {
        this.sessionMap = sessionMap;
    }

    public Map<String, Object> getSessionMap() {
        return sessionMap;
    }
    
    public String autentication() throws Exception {
        return SUCCESS;
    }

    public String backPanel() throws Exception {
        return SUCCESS;
    }
}
