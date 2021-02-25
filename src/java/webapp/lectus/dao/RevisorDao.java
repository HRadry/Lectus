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

    public Revisor find(int idLibro) {
        System.out.println("parametro" + idLibro);
        Revisor hecho = null;
        Revisor revisor = new Revisor();
        String sentencia = "from Revisor where idLibro='" + idLibro + "'";
        try {
            iniciaOperacion();
            //session.beginTransaction();
            List<Revisor> listaRevisor = (List<Revisor>) session.createQuery(sentencia).list();
            if (!listaRevisor.isEmpty()) {
                revisor = listaRevisor.get(0);
                System.out.println("objeto obtenido" + revisor.getIdRevisor());
                hecho = revisor;
            }

        } catch (Exception e) {
            System.out.println("error");
        }
        return hecho;
    }

    public Carrera findCarrera(int idUsuario) throws HibernateException {
        
        Carrera carrera = null;
        try {
            System.out.println("usuarioDao" + idUsuario);
            iniciaOperacion();
            carrera = (Carrera) session.load(Carrera.class, idUsuario);
        
        } finally {
            session.close();
        }
        return carrera;
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

    public List<Carrera> carreras() throws HibernateException {
        List<Carrera> listaCarreras = null;

        try {
            iniciaOperacion();
            listaCarreras = session.createQuery("from Carrera").list();
        } finally {
            session.close();
        }
        return listaCarreras;
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
