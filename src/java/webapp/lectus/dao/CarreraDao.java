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
import webapp.lectus.models.Carrera;

/**
 *
 * @author herna
 */
public class CarreraDao {

    private Session session;
    private Transaction transaction;

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

    public List<Carrera> all() throws HibernateException {
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