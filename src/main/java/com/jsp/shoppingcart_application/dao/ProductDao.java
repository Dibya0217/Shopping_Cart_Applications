package com.jsp.shoppingcart_application.dao;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jsp.shoppingcart_application.dto.Merchant;
import com.jsp.shoppingcart_application.dto.Product;

@Repository
public class ProductDao {
    @Autowired
    private EntityManagerFactory emf;

    @Autowired
    MerchantDao mdao;

    public void saveProduct(Product c) {
        EntityManager em = emf.createEntityManager();
        EntityTransaction et = em.getTransaction();

        et.begin();
        em.persist(c);
        et.commit();
    }

    public void updateProduct(Product c) {
        EntityManager em = emf.createEntityManager();
        EntityTransaction et = em.getTransaction();

        et.begin();
        em.merge(c);
        et.commit();
    }

    public void deleteProductById(int id) {
        EntityManager em =emf.createEntityManager();
        EntityTransaction et = em.getTransaction();

        Product c = em.find(Product.class, id);

        et.begin();
        em.remove(c);
        et.commit();

    }


    public Merchant deleteProductFromMerchant(int merchant_id, int product_id) {

        Merchant merchant = mdao.findMerchantById(merchant_id);
        List<Product> products = merchant.getProducts();

        List<Product> productsList = new ArrayList();

        for (Product p : products) {

            if (p.getId() != product_id)
                productsList.add(p);
        }

        merchant.setProducts(productsList);


        return merchant;

    }

    public List<Product>findAllProduct(){
        EntityManager em = emf.createEntityManager();
        Query query =em.createQuery("select p from Product p");
        List<Product>products =query.getResultList();
        return products;
    }

    public Product findProductById(int id) {
        EntityManager em = emf.createEntityManager();

        Product p = em.find(Product.class, id);
        if (p != null)
            return p;
        else
            return null;
    }

    public List<Product>findProductBrand(String brand){
        EntityManager em = emf.createEntityManager();
        Query query = em.createQuery("select p from Product p where brand=?1");
        query.setParameter(1, brand);

        List<Product> products = query.getResultList();
        return products;
    }


}
