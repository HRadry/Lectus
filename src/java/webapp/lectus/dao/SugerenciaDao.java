package webapp.lectus.dao;

import webapp.lectus.connection.HibernateUtil;
import java.util.List;
import webapp.lectus.models.Sugerencia;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class SugerenciaDao {
    private Session session;
    private Transaction transaction;
    
    public int insert(Sugerencia sugerencia) throws HibernateException { 
        int id = 0;  
        
        try { 
            iniciaOperacion(); 
            id = (Integer)session.save(sugerencia);
            concretaOperacion(); 
        } catch (HibernateException he) { 
            manejaExcepcion(he); 
            throw he; 
        } finally { 
            session.close(); 
        }  
        return id; 
    }
        
    public void delete(Sugerencia sugerencia) throws HibernateException { 
        try { 
            iniciaOperacion(); 
            session.delete(sugerencia); 
            concretaOperacion(); 
        } catch (HibernateException he) { 
            manejaExcepcion(he); 
            throw he; 
        } finally { 
            session.close(); 
        } 
    }
    
    public Sugerencia find(int idSugerencia) throws HibernateException 
    { 
        Sugerencia sugerencia = null;  
        try { 
            iniciaOperacion(); 
            sugerencia = (Sugerencia)session.get(Sugerencia.class, idSugerencia);
            System.out.println("Este es el libro:" + sugerencia);
        } finally { 
            session.close(); 
        }  
        return sugerencia; 
    }
    
    public List<Sugerencia> all() throws HibernateException 
    { 
        List<Sugerencia> listaSugerencias = null;  

        try { 
            iniciaOperacion(); 
            listaSugerencias = session.createQuery("from Sugerencia").list(); 
        } finally { 
            session.close(); 
        }  
        return listaSugerencias; 
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
