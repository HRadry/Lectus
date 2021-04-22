package webapp.lectus.dao;

import webapp.lectus.connection.HibernateUtil;
import java.util.List;
import webapp.lectus.models.Parcial;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class ParcialDao {
    private Session session;
    private Transaction transaction;
    
    public void update(Parcial parcial) throws HibernateException 
    { 
        try { 
            iniciaOperacion(); 
            session.update(parcial); 
            concretaOperacion();  
        } catch (HibernateException he) { 
            manejaExcepcion(he); 
            throw he; 
        } finally { 
            session.close(); 
        } 
    }
    
    public Parcial find(int idParcial) throws HibernateException 
    { 
        Parcial parcial = null;  
        try { 
            iniciaOperacion(); 
            parcial = (Parcial)session.get(Parcial.class, idParcial);
            System.out.println("El parcial es: " + parcial);
        } finally { 
            session.close(); 
        }  
        return parcial; 
    }
    
     public Parcial findParcial() throws HibernateException 
    { 
        Parcial parcial = new Parcial();  
        try { 
            iniciaOperacion(); 
            String sentencia = "from Parcial where CURDATE() between fechaInicio and fechaFin";
            parcial = (Parcial) session.createQuery(sentencia).uniqueResult();
            System.out.println("El parcial es: " + parcial);
        } finally { 
            session.close(); 
        }  
        return parcial; 
    }
    
    public List<Parcial> all() throws HibernateException 
    { 
        List<Parcial> listaParciales = null;  

        try { 
            iniciaOperacion(); 
            listaParciales = session.createQuery("from Parcial").list(); 
        } finally { 
            session.close(); 
        }  
        return listaParciales; 
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
