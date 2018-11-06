package com.project.fastfood.entities;

import javax.persistence.*;
import java.util.Objects;

@Entity
@Table(name = "shop", schema = "food_and_drink", catalog = "")
public class ShopEntity {
    private Integer idShop;
    private String address;
    private String phone;
    private String email;
    private String description;
    private Double averageShopCost;
    private String logo;

    @Id
    @Column(name = "id_shop", nullable = false)
    public Integer getIdShop() {
        return idShop;
    }

    public void setIdShop(Integer idShop) {
        this.idShop = idShop;
    }

    @Basic
    @Column(name = "address", nullable = true, length = 200)
    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    @Basic
    @Column(name = "phone", nullable = true, length = 20)
    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    @Basic
    @Column(name = "email", nullable = true, length = 100)
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Basic
    @Column(name = "description", nullable = true, length = 500)
    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Basic
    @Column(name = "average_shop_cost", nullable = true, precision = 0)
    public Double getAverageShopCost() {
        return averageShopCost;
    }

    public void setAverageShopCost(Double averageShopCost) {
        this.averageShopCost = averageShopCost;
    }

    @Basic
    @Column(name = "logo", nullable = true, length = 500)
    public String getLogo() {
        return logo;
    }

    public void setLogo(String logo) {
        this.logo = logo;
    }

}
