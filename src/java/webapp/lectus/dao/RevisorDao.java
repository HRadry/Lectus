package webapp.lectus.dao;

import java.util.Iterator;
import java.util.List;
import org.hibernate.Filter;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;
import webapp.lectus.connection.HibernateUtil;
import webapp.lectus.models.Carrera;
import webapp.lectus.models.Revisor;
import webapp.lectus.models.Usuario;
import webapp.lectus.models.UsuarioAlumno;
import webapp.lectus.models.UsuarioRevisor;

public class RevisorDao {

    private Session session;
    private Transaction transaction;

    public int insert(Revisor revisor) throws HibernateException {
        int id = 0;
        try {
            iniciaOperacion();
            id = (Integer) session.save(revisor);
            concretaOperacion();
        } catch (HibernateException he) {
            manejaExcepcion(he);
            throw he;
        } finally {
            session.close();
        }
        return id;
    }
    public void update(Revisor revisor) throws HibernateException {
        try {
            iniciaOperacion();
            session.update(revisor);
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

    public UsuarioRevisor find(int id) throws HibernateException {
        UsuarioRevisor usuarioRevisor = null;
        String sentencia = "from UsuarioRevisor where  idUsuario = '"+ id +"'";
        try {
            iniciaOperacion();
            usuarioRevisor = (UsuarioRevisor) session.createQuery(sentencia).uniqueResult();
        } finally {
            session.close();
        }
        System.out.println("Error"+ sentencia );
        return usuarioRevisor;
    }
    
    public UsuarioRevisor findRevisorLibro( int id) throws HibernateException {
        UsuarioRevisor usuarioRevisor = null;
        String sentencia = "from UsuarioRevisor where  idLibro = 60";
        try {
            iniciaOperacion();
            usuarioRevisor = (UsuarioRevisor) session.createQuery(sentencia).uniqueResult();
        } finally {
            session.close();
        }
        System.out.println("findRevisorLibro  "+ sentencia );
        return usuarioRevisor;
    }

    public List<UsuarioRevisor> all(String tipoUsuario) throws HibernateException {
        List<UsuarioRevisor> listaUsuarios = null;
        String sentencia = "from UsuarioRevisor";
        try {
            iniciaOperacion();
            // Activamos el filtro para mostrar sólo a los revisores o alumnos		
            Filter filtro = session.enableFilter("filtroUsuarioRevisor");
            filtro.setParameter("usuarioRevisorParam", tipoUsuario);
            listaUsuarios = session.createQuery(sentencia).list();
            Iterator<UsuarioRevisor> ite = listaUsuarios.iterator();
            UsuarioRevisor emp = null;

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
