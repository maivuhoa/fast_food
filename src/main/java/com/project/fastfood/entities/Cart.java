package com.project.fastfood.entities;

import java.util.ArrayList;

public class Cart {
    private static ArrayList<Item> cartItems = new ArrayList<>();
    private double orderTotal;
    private int saleoff_number;
    private static Cart instance;

    public static Cart getInstance() {
        if(instance == null)
            instance = new Cart();
        return instance;
    }

    public int getSaleoff_number() {
        return saleoff_number;
    }

    public void setSaleoff_number(int saleoff_number) {
        this.saleoff_number = saleoff_number;
    }

    public ArrayList<Item> getCartItems() {
        return cartItems;
    }

    public void setCartItems(ArrayList<Item> cartItems) {
        this.cartItems = cartItems;
    }

    public double getOrderTotal() {
        return orderTotal;
    }

    public void setOrderTotal(double orderTotal) {
        this.orderTotal = orderTotal;
    }

    public Cart() {
    }

    public int getLineItemCount() {
        return cartItems.size();
    }

    public static Item getItemById(int product_id) {
        for (Item item : cartItems) {
            if (item.getProduct().getIdProduct() == product_id) {
                return item;
            }
        }
        return null;
    }

    public void addToCart(ProductsEntity product, int quality) {
        ProductsEntity p = product;
        Item item = getItemById(p.getIdProduct());
        if (item == null) {
            item = new Item(product, 0);
            this.cartItems.add(item);
        }
        int newQuality = item.getQuantity() + quality;
        if (newQuality <= 0) {
            this.cartItems.remove(item);
        } else {
            item.setQuantity(newQuality);
            this.updateList(item);
        }
    }

    public void updateList(Item objItem) {
        for (int i = 0; i < cartItems.size(); i++) {
            if (cartItems.get(i).getProduct().getIdProduct() == objItem.getProduct().getIdProduct()) {
                cartItems.set(i, objItem);
                break;
            }
        }
    }

    public void updateCart(int product_id, int quantity) {
        Item item = this.getItemById(product_id);
        if (item != null) {
            if (quantity <= 0) {
                this.cartItems.remove(item);
            } else {
                item.setQuantity(quantity);
                this.updateList(item);
            }
        }
    }

    public void removeProduct(int id) {
        Item item = this.getItemById(id);
        if (item != null) {
            this.cartItems.remove(item);
        }
    }

    public int getQuantityTotal() {
        int quantity = 0;
        for (Item item : cartItems) {
            quantity += item.getQuantity();
        }
        return quantity;
    }

    public double getAmountTotal() {
        double total = 0;
        for (Item item : cartItems) {
            total += item.getAmount();
        }
        return total;
    }
}

