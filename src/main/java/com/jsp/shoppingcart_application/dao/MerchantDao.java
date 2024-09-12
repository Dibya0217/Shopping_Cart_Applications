package com.jsp.shoppingcart_application.dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.NoResultException;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jsp.shoppingcart_application.dto.Merchant;
import com.jsp.shoppingcart_application.dto.Product;

@Repository
public class MerchantDao {
    @Autowired
    private EntityManagerFactory emf ;

    @Autowired
    ProductDao pdao;

    public void saveMerchant(Merchant c) {
        EntityManager em = emf.createEntityManager();
        EntityTransaction et = em.getTransaction();

        et.begin();
        em.persist(c);
        et.commit();
    }
    public void updateMerchant(Merchant c) {
        EntityManager em = emf.createEntityManager();
        EntityTransaction et = em.getTransaction();

        et.begin();
        em.merge(c);
        et.commit();
    }

    public void deleteMerchantById(int id) {
        EntityManager em=emf.createEntityManager();
        EntityTransaction et = em.getTransaction();

        Merchant c = em.find(Merchant.class, id);
        et.begin();
        em.remove(c);
        et.commit();
    }
    public Merchant findMerchantById(int id) {
        EntityManager em = emf.createEntityManager();

        Merchant m = em.find(Merchant.class, id);

        if (m != null)
            return m;
        else
            return null;
    }
    public Merchant findMerchantByEmailAndPassword(String email, String password) {
        EntityManager em = emf.createEntityManager();
        Query query = em.createQuery("select m from Merchant m where m.email=?1 and m.password=?2");
        query.setParameter(1, email);
        query.setParameter(2, password);
        try {
            Merchant merchant = (Merchant) query.getSingleResult();
            return merchant;
        } catch (NoResultException e) {
            return null;
        }

    }



}
