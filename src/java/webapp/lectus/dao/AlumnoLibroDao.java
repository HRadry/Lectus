package webapp.lectus.dao;

import java.util.Iterator;
import java.util.List;
import org.hibernate.Filter;
import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import webapp.lectus.connection.HibernateUtil;
import webapp.lectus.models.AlumnoLibro;
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
    public List<Libro> all(String estatus) throws HibernateException {
        List<Libro> lista = null;
        List<Libro> listaLibros = null;
        Libro libro = new Libro();
        int c=0;
        try { 
            iniciaOperacion(); 
           // Activamos el filtro para mostrar sólo a los libros disponibles o sugeridos segun sea el caso	
            Filter filtro = session.enableFilter("filtroLibro");
            filtro.setParameter("libroParam", estatus);
            
            lista = session.createQuery("from Libro").list(); 
            System.out.println("lista" + c);
            Iterator<Libro> ite = lista.iterator();
           while (ite.hasNext())
            {
                 libro = ite.next();
                 System.out.println("objeto obtenido de lista" + libro);
                if(libro.getNumeroMaximoAlumnos() == 0){
                    System.out.println("objeto obtenido de lista ==0" + libro);
                    lista.remove(libro);
                }
            }
           
        } finally { 
            session.close(); 
        }  
         System.out.println("objeto obtenido de lista final" + lista);
        return lista; 
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
    
    public void numeroMaximoAlumnos (int idLibro) {
        System.out.println("entro bien");
        String sentencia = "update Libro set numeroMaximoAlumnos = numeroMaximoAlumnos-1 where idLibro='" + idLibro + "'";
        try {
            iniciaOperacion();
            //session.beginTransaction();
            session.createQuery(sentencia).executeUpdate();
            

        } catch (Exception e) {
            System.out.println("error" + e);
        }finally {
            session.close();
        }
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
