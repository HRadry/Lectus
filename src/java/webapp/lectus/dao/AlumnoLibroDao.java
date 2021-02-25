package webapp.lectus.dao;

import java.util.Iterator;
import java.util.List;
import org.hibernate.Filter;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import webapp.lectus.connection.HibernateUtil;
import webapp.lectus.models.Alumno;
import webapp.lectus.models.AlumnoLibro;
import webapp.lectus.models.Carrera;
import webapp.lectus.models.Grupo;
import webapp.lectus.models.Libro;
import webapp.lectus.models.Usuario;

public class AlumnoLibroDao {

    private Session session;
    private Transaction transaction;

    public Libro find(int idLibro) throws HibernateException {
        Libro libro = null;
        try {
            //System.out.println("usuarioDaoooo" + idLibro);
            iniciaOperacion();
            libro = (Libro) session.get(Libro.class, idLibro);
        } finally {
            session.close();
        }
        return libro;
    }
    
    public boolean findRegistro(int id) {
        
        Session session = HibernateUtil.getSessionFactory().openSession();
        //session.beginTransaction();
        String sql = " from alumnolibro u where u.idUsuario=:id";
        Query query = session.createQuery(sql);
        query.setParameter("id", id);
        List<Usuario> list = query.list();
        if (list.size() > 0) {
            session.close();
            return true;
        }
        session.close();        
        return false;
    }
    public List<Libro> all() throws HibernateException {
        List<Libro> listaLibros = null;

        try {
            iniciaOperacion();
            listaLibros = session.createQuery("from Libro").list();
            Iterator<Libro> ite = listaLibros.iterator();
            Libro emp = null;

            while (ite.hasNext()) {
                emp = ite.next();

            }
        } finally {
            session.close();
        }
        return listaLibros;
    }
    
    public int seleccion(AlumnoLibro alumnoLibro) throws HibernateException {
        int id = 0;
        try {
            iniciaOperacion();
            id = (Integer) session.save(alumnoLibro);
            concretaOperacion();
        } catch (HibernateException he) {
            manejaExcepcion(he);
            throw he;
        } finally {
            session.close();
        }
        return id;
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
