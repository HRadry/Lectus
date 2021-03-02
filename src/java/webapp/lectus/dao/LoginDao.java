package webapp.lectus.dao;

import webapp.lectus.models.Usuario;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import webapp.lectus.connection.HibernateUtil;

public class LoginDao {

    private Session session;
    private Transaction transaction;

    public Usuario find(String correo, String password) {
        System.out.println("credenciales" + correo+ password);
        Usuario hecho = null;
        Usuario user = new Usuario();
        String sentencia = "from Usuario where correo='" + correo
                + "' and password='" + password + "'";
        try {
            iniciaOperacion();
            //session.beginTransaction();
            List<Usuario> listaUsuarios = (List<Usuario>) session.createQuery(sentencia).list();
            if (!listaUsuarios.isEmpty()) {
                user = listaUsuarios.get(0);
                System.out.println("objeto obtenido" + user.getNombre());
                hecho = user;
            }

        } catch (Exception e) {
            System.out.println("error" + e);
        }
        return hecho;
    }

    public Usuario findUser(int matricula) throws HibernateException {
        System.out.println("Esta es la matrícula: " + matricula);

        Usuario user = null;
        try {
            iniciaOperacion();
            user = (Usuario) session.get(Usuario.class, matricula);
            System.out.println("Este es el usuario recuperado: " + user);
        } finally {
            session.close();
        }
        return user;
    }

    private void iniciaOperacion() throws HibernateException {
        session = HibernateUtil.getSessionFactory().openSession();
        transaction = session.beginTransaction();
    }
}
