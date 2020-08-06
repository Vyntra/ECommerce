package com.eCommerce.ecommerce.model;

import org.hibernate.annotations.GenericGenerator;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
public class Cart {

    @Id
    @Column(name = "CartId")
    @GeneratedValue(generator = "incrementator")
    @GenericGenerator(name = "incrementator", strategy = "increment")
    private Long cartId;

    @OneToOne
    private User user;

    @ManyToMany()
    private List<Product> productList;

    public Cart(){
    }

    public Cart(User user) {
        this.user = user;
        this.productList = new ArrayList<Product>();
    }

    public Cart(User user, List<Product> productList) {
        this.user = user;
        this.productList = productList;
    }

    public Long getCartId() {
        return cartId;
    }

    public void setCartId(Long cartId) {
        this.cartId = cartId;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public List<Product> getProductList() {
        return productList;
    }

    public void setProductList(List<Product> productList) {
        this.productList = productList;
    }
}
