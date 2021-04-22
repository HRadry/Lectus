package webapp.lectus.dao;

import java.util.Iterator;
import java.util.List;
import org.hibernate.Filter;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;
import webapp.lectus.connection.HibernateUtil;
import webapp.lectus.models.Carrera;
import webapp.lectus.models.Usuario;
import webapp.lectus.models.UsuarioAlumno;

public class UsuarioDao {

    private Session session;
    private Transaction transaction;

    public int insert(Usuario usuario) throws HibernateException {
        int id = 0;
        try {
            iniciaOperacion();
            id = (Integer) session.save(usuario);
            concretaOperacion();
        } catch (HibernateException he) {
            manejaExcepcion(he);
            throw he;
        } finally {
            session.close();
        }
        return id;
    }

    public void update(Usuario usuario) throws HibernateException {
        try {
            iniciaOperacion();
            session.update(usuario);
            concretaOperacion();
        } catch (HibernateException he) {
            manejaExcepcion(he);
            throw he;
        } finally {
            session.close();
        }
    }

    public void delete(int idUsuario) throws HibernateException {
        try {
            iniciaOperacion();
            System.out.println("iddddddddddddddd" + idUsuario);
            String sentencia = "DELETE from Usuario where idUsuario='" + idUsuario + "'";
            session.createQuery(sentencia).executeUpdate();
            concretaOperacion();
        } catch (HibernateException he) {
            System.out.println("Hay datos en el alumno" + he);
        }
        session.close();
    }

    public UsuarioAlumno find(int idUsuario) throws HibernateException {
        UsuarioAlumno usuarioAlumno = null;
        String sentencia = "from UsuarioAlumno where idUsuario='" + idUsuario + "'";
        try {
            iniciaOperacion();
            usuarioAlumno = (UsuarioAlumno) session.createQuery(sentencia).uniqueResult();
        } finally {
            session.close();
        }
        return usuarioAlumno;
    }

    public List<UsuarioAlumno> all(String tipoUsuario) throws HibernateException {
        List<UsuarioAlumno> listaUsuarios = null;
        String sentencia = "from UsuarioAlumno";
        try {
            iniciaOperacion();
            // Activamos el filtro para mostrar sólo a los revisores o alumnos		
            Filter filtro = session.enableFilter("filtroUsuarioAlumno");
            filtro.setParameter("usuarioAlumnoParam", tipoUsuario);
            listaUsuarios = session.createQuery(sentencia).list();
            Iterator<UsuarioAlumno> ite = listaUsuarios.iterator();
            UsuarioAlumno emp = null;

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
