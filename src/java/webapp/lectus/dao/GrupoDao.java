package webapp.lectus.dao;

import java.util.Iterator;
import java.util.List;
import org.hibernate.Filter;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;
import webapp.lectus.connection.HibernateUtil;
import webapp.lectus.models.Carrera;
import webapp.lectus.models.Grupo;
import webapp.lectus.models.Usuario;

public class GrupoDao {

    private Session session;
    private Transaction transaction;

    public int insert(Grupo grupo) throws HibernateException {
        int id = 0;
        try {
            iniciaOperacion();
            id = (Integer) session.save(grupo);
            concretaOperacion();
        } catch (HibernateException he) {
            manejaExcepcion(he);
            throw he;
        } finally {
            session.close();
        }
        return id;
    }
    public void update(Grupo grupo) throws HibernateException {
        try {
            iniciaOperacion();
            session.update(grupo);
            concretaOperacion();
        } catch (HibernateException he) {
            manejaExcepcion(he);
            throw he;
        } finally {
            session.close();
        }
    }

    public void delete(Usuario usuario) throws HibernateException {
        try {
            iniciaOperacion();
            session.delete(usuario);
            concretaOperacion();
        } catch (HibernateException he) {
            manejaExcepcion(he);
            throw he;
        } finally {
            session.close();
        }
    }

    public Usuario find(int idUsuario) throws HibernateException {
        Usuario usuario = null;
        try {
            System.out.println("usuarioDaoooo" + idUsuario);
            iniciaOperacion();
            usuario = (Usuario) session.get(Usuario.class, idUsuario);
        } finally {
            session.close();
        }
        return usuario;
    }
    
    public List<Usuario> all(String tipoUsuario) throws HibernateException {
        List<Usuario> listaUsuarios = null;

        try {
            iniciaOperacion();
            // Activamos el filtro para mostrar sólo a los revisores o alumnos		
            Filter filtro = session.enableFilter("filtroUsuario");
            filtro.setParameter("usuarioParam", tipoUsuario);
            listaUsuarios = session.createQuery("from Usuario").list();
            Iterator<Usuario> ite = listaUsuarios.iterator();
            Usuario emp = null;

            while (ite.hasNext()) {
                emp = ite.next();                
            }
        } finally {
            session.close();
        }
        return listaUsuarios;
    }

    private void iniciaOperacion() throws HibernateException {
        session = HibernateUtil.getSessionFactory().openSession();
        transaction = session.beginTransaction();
    }

    private void concretaOperacion() throws HibernateException {
        transaction.commit();
    }

    private void manejaExcepcion(HibernateException he) throws HibernateException {
        transaction.rollback();
        throw new HibernateException("Ocurrió un error en la capa de acceso a datos", he);
    }
}
