package webapp.lectus.dao;

import webapp.lectus.connection.HibernateUtil;
import java.util.List;
import webapp.lectus.models.Libro;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class LibroDao {
    private Session session;
    private Transaction transaction;
    
    public int insert(Libro libro) throws HibernateException 
    { 
        int id = 0;  
        
        try { 
            iniciaOperacion(); 
            id = (Integer)session.save(libro);
            concretaOperacion(); 
        } catch (HibernateException he) { 
            manejaExcepcion(he); 
            throw he; 
        } finally { 
            session.close(); 
        }  
        return id; 
    }
    
    public void update(Libro libro) throws HibernateException 
    { 
        try { 
            iniciaOperacion(); 
            session.update(libro); 
            concretaOperacion();  
        } catch (HibernateException he) { 
            manejaExcepcion(he); 
            throw he; 
        } finally { 
            session.close(); 
        } 
    }
    
    public void delete(Libro libro) throws HibernateException 
    { 
        try { 
            iniciaOperacion(); 
            session.delete(libro); 
            concretaOperacion(); 
        } catch (HibernateException he) { 
            manejaExcepcion(he); 
            throw he; 
        } finally { 
            session.close(); 
        } 
    }
    
    public Libro find(int idLibro) throws HibernateException 
    { 
        Libro libro = null;  
        try { 
            iniciaOperacion(); 
            libro = (Libro)session.get(Libro.class, idLibro);
            System.out.println("Este es el libro:" + libro);
        } finally { 
            session.close(); 
        }  
        return libro; 
    }
    
    public List<Libro> all() throws HibernateException 
    { 
        List<Libro> listaLibros = null;  

        try { 
            iniciaOperacion(); 
            listaLibros = session.createQuery("from Libro").list(); 
        } finally { 
            session.close(); 
        }  
        return listaLibros; 
    }
    
    private void iniciaOperacion() throws HibernateException 
    { 
        session = HibernateUtil.getSessionFactory().openSession(); 
        transaction = session.beginTransaction(); 
    }
    
    private void concretaOperacion() throws HibernateException 
    { 
        transaction.commit(); 
    }

    private void manejaExcepcion(HibernateException he) throws HibernateException 
    { 
        transaction.rollback(); 
        throw new HibernateException("Ocurrió un error en la capa de acceso a datos", he); 
    }    
}
