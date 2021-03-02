/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package webapp.lectus.dao;

import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;
import webapp.lectus.connection.HibernateUtil;
import webapp.lectus.models.Area;

/**
 *
 * @author herna
 */
public class AreaDao {

    private Session session;
    private Transaction transaction;

    public Area findArea(int idArea ) throws HibernateException {

        Area area = null;
        try {
            System.out.println("areaDao" + idArea );
            iniciaOperacion();
            area  = (Area) session.load(Area .class, idArea );

        } finally {
            session.close();
        }
        return area ;
    }

    public List<Area> area() throws HibernateException {
        List<Area> listaArea = null;

        try {
            iniciaOperacion();
            listaArea = session.createQuery("from Area").list();
        } finally {
            session.close();
        }
        return listaArea;
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