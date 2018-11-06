package com.project.fastfood.entities;

public class Item {
    private ProductsEntity product;
    private int quantity;

    public ProductsEntity getProduct() {
        return product;
    }

    public void setProduct(ProductsEntity product) {
        this.product = product;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public Item(ProductsEntity product, int quantity) {
        this.product = product;
        this.quantity = quantity;
    }

    public Item() {
    }

    public double getAmount() {
        if (product.getPrice() > 0) {
            return product.getPrice() * quantity;
        } else {
            return product.getPrice() * quantity;
        }
    }
}
