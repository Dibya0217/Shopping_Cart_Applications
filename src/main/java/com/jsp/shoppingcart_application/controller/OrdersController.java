package com.jsp.shoppingcart_application.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.jsp.shoppingcart_application.dao.CartDao;
import com.jsp.shoppingcart_application.dao.CustomerDao;
import com.jsp.shoppingcart_application.dao.OrdersDao;
import com.jsp.shoppingcart_application.dao.ProductDao;
import com.jsp.shoppingcart_application.dto.Cart;
import com.jsp.shoppingcart_application.dto.Customer;
import com.jsp.shoppingcart_application.dto.Item;
import com.jsp.shoppingcart_application.dto.Orders;
import com.jsp.shoppingcart_application.dto.Product;

@Controller
public class OrdersController {
    @Autowired
    OrdersDao dao;

    @Autowired
    CustomerDao cdao;

    @Autowired
    ProductDao pdao;

    @Autowired
    CartDao cartdao;

    @RequestMapping("/addorder")
    public ModelAndView addOrder() {
        Orders o = new Orders();
        ModelAndView mav=new ModelAndView();
        mav.addObject("ordersobj", o);
        mav.setViewName("ordersform");
        return mav;
    }
    @RequestMapping("/saveorder")
    public ModelAndView saveOrder(@ModelAttribute("ordersobj")Orders o,HttpSession session) {
        Customer customer= (Customer)session.getAttribute("customerinfo");
        Customer c =cdao.findCustomerById(customer.getId());
        Cart cart = customer.getCart();

        List<Item> items = cart.getItems();

        List<Item> cartItems=new ArrayList<Item>();

        List<Item> orderItems=new ArrayList<Item>();

        for(Item i :items) {
            Product p =pdao.findProductById(i.getP_id());
            if(i.getQuantity()<p.getStock()) {
                orderItems.add(i);
                p.setStock(p.getStock()-i.getQuantity());
                pdao.updateProduct(p);
            }else {
                cartItems.add(i);
            }
        }
        double cartTotalPrice=0;
        double orderTotalPrice=0;
        for(Item i : cartItems) {
            cartTotalPrice+=i.getPrice();
        }
        for(Item i : orderItems) {
            orderTotalPrice+=i.getPrice();
        }
        cart.setItems(cartItems);
        cart.setTotalPrice(orderTotalPrice);


        List<Orders> orders = c.getOrders();
        if(orders.size()>0)
            orders.add(o);
        else {
            List<Orders> orders1 = new ArrayList<Orders>();
            orders1.add(o);
            c.setOrders(orders1);
        }
        cartdao.updatCart(cart);
        dao.saveOrder(o);
        cdao.updateCustomer(c);

        ModelAndView mav=new ModelAndView();
        mav.addObject("msg","orders Placed Successfully");
        mav.setViewName("customerbill");
        return mav;
    }
}
