package webapp.lectus.connection;

import org.hibernate.HibernateException;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;


public class HibernateUtil {

    /*private static final SessionFactory sessionFactory;
    private static ServiceRegistry serviceRegistry;
   
    static {
        try {
            Configuration config = new Configuration();
            config.configure();//"webapp/lectus/persistence/hibernate.cfg.xml"
            serviceRegistry = new StandardServiceRegistryBuilder().applySettings(config.getProperties()).build();
    
            sessionFactory = config.buildSessionFactory(serviceRegistry);
        } catch (HibernateException ex) {
            // Log the exception. 
            System.err.println("Ocurrió un error en la inicialización de la SessionFactory: " + ex);
            throw new ExceptionInInitializerError(ex);
        }
    }
    
    public static SessionFactory getSessionFactory() {
        return sessionFactory;
    }*/
    
    // Puedes ocupar cualquiera de estos métodos (la que está comentada o la de abajo, igual funcionan)
    
    private static SessionFactory sessionFactory;
 
    public static SessionFactory getSessionFactory() {
        if (sessionFactory == null) {
            // loads configuration and mappings
            Configuration configuration = new Configuration().configure();
            ServiceRegistry serviceRegistry
                    = new StandardServiceRegistryBuilder()
                    .applySettings(configuration.getProperties()).build();
 
            // builds a session factory from the service registry
            sessionFactory = configuration.buildSessionFactory(serviceRegistry);
        }
 
        return sessionFactory;
    }
}
