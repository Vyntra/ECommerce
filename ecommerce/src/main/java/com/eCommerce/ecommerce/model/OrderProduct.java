package com.eCommerce.ecommerce.model;

import javax.persistence.*;

@Entity
public class OrderProduct {

    @EmbeddedId
    private OrderProductId orderProductId;

    @Column(name = "Quantity")
    private  Long quantity;

    @Column(name = "Price")
    private Long price;

    @Column(name = "Discount")
    private Integer discount;

    public OrderProduct(){}

    public OrderProduct(OrderProductId orderProductId, Long quantity, Long price, Integer discount) {
        this.orderProductId = orderProductId;
        this.quantity = quantity;
        this.price = price;
        this.discount = discount;
    }

    public OrderProductId getOrderProductId() {
        return orderProductId;
    }

    public void setOrderProductId(OrderProductId orderProductId) {
        this.orderProductId = orderProductId;
    }

    public Long getQuantity() {
        return quantity;
    }

    public void setQuantity(Long quantity) {
        this.quantity = quantity;
    }

    public Long getPrice() {
        return price;
    }

    public void setPrice(Long price) {
        this.price = price;
    }

    public Integer getDiscount() {
        return discount;
    }

    public void setDiscount(Integer discount) {
        this.discount = discount;
    }
}
