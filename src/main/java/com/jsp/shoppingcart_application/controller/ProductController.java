package com.jsp.shoppingcart_application.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.jsp.shoppingcart_application.dao.MerchantDao;
import com.jsp.shoppingcart_application.dao.ProductDao;
import com.jsp.shoppingcart_application.dto.Merchant;
import com.jsp.shoppingcart_application.dto.Product;

@Controller
public class ProductController {
    @Autowired
    ProductDao dao;
    @Autowired
    MerchantDao mdao;

    @RequestMapping("/addproduct")
    public ModelAndView addProduct() {
        Product p = new Product();

        ModelAndView mav = new  ModelAndView();

        mav.addObject("productobj",p);
        mav.setViewName("productform");
        return mav;
    }

    @RequestMapping("/saveproduct")
    public ModelAndView saveProduct(@ModelAttribute("productobj")Product p , HttpSession session) {
        Merchant m = (Merchant)session.getAttribute("merchantinfo");
        List<Product> products = m.getProducts();
        if(products.size()>0) {
            products.add(p);
            m.setProducts(products);
        }else {
            List<Product> products1 =new ArrayList<Product>();
            products1.add(p);
            m.setProducts(products1);
        }
        dao.saveProduct(p);
        mdao.updateMerchant(m);

        ModelAndView mav = new ModelAndView();
        mav.addObject("msg", "Product Saved Successfully");
        mav.setViewName("merchantoptions");
        return mav;

    }
    @RequestMapping("/viewproduct")
    public ModelAndView viewAllProduct(HttpSession session) {
        Merchant m = (Merchant)session.getAttribute("merchantinfo");
        Merchant merchant =mdao.findMerchantById(m.getId());
        List<Product> pr = merchant.getProducts();

        ModelAndView mav = new ModelAndView();
        mav.addObject("productslist", pr);
        mav.setViewName("viewallproduct");

        return mav;
    }
    @RequestMapping("/delete")
    public ModelAndView deleteProduct(@RequestParam("id") int pid, HttpSession session) {
        Merchant m = (Merchant) session.getAttribute("merchantinfo");

        Merchant merchant = dao.deleteProductFromMerchant(m.getId(), pid);

        mdao.updateMerchant(merchant);
        dao.deleteProductById(pid);

        //session.setAttribute("merchantinfo", merchant);

        ModelAndView mav = new ModelAndView();
        mav.setViewName("redirect://viewproduct");
        return mav;
    }


    @RequestMapping("/update")
    public ModelAndView update(@RequestParam("id") int id , HttpSession session) {
        Merchant merchant = (Merchant)session.getAttribute("merchantinfo");
        Product p=dao.findProductById(id);
        ModelAndView mav = new ModelAndView();
        mav.addObject("updateobj", p);
        mav.setViewName("updateproduct");
        return mav;
    }

    @RequestMapping("/updateproduct")
    public ModelAndView updateProduct(@ModelAttribute("updateobj") Product product) {
        ModelAndView mav = new ModelAndView();
        dao.updateProduct(product);
        mav.addObject("msg", "Data Updated Successfully");
        mav.setViewName("merchantoptions");
        return mav;
    }


    @RequestMapping("/fetchallproducts")
    public ModelAndView fetchAllProducts() {
        List<Product> products = dao.findAllProduct();
        ModelAndView mav = new ModelAndView();
        mav.addObject("productslist", products);
        mav.setViewName("displayallproduct");
        return mav;
    }
    @RequestMapping("/displayproductsbybrand")
    public ModelAndView fetchProductsByBrand(ServletRequest req) {
        String brand = req.getParameter("brand");
        List<Product> products=dao.findProductBrand(brand);
        ModelAndView mav = new ModelAndView();
        mav.addObject("productslist", products);
        mav.setViewName("displayallproduct");
        return mav;

    }

}
