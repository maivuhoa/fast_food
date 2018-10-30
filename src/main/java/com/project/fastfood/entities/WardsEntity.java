package com.project.fastfood.entities;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import javax.persistence.*;
import java.util.List;
import java.util.Objects;

@Entity
@Table(name = "wards", schema = "food_and_drink", catalog = "")
@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
public class WardsEntity {
    private String idWard;
    private String name;
    private String type;
    private String location;
    private List<OrdersEntity> orders;
    private List<UsersEntity> users;
    private DistrictsEntity district;

    @Id
    @Column(name = "id_ward", nullable = false, length = 5)
    public String getIdWard() {
        return idWard;
    }

    public void setIdWard(String idWard) {
        this.idWard = idWard;
    }

    @Basic
    @Column(name = "name", nullable = false, length = 100)
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Basic
    @Column(name = "type", nullable = false, length = 30)
    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    @Basic
    @Column(name = "location", nullable = false, length = 30)
    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    @OneToMany(mappedBy = "ward", fetch = FetchType.LAZY)
    @JsonIgnore
    public List<OrdersEntity> getOrders() {
        return orders;
    }

    public void setOrders(List<OrdersEntity> orders) {
        this.orders = orders;
    }

    @OneToMany(mappedBy = "ward", fetch = FetchType.LAZY)
    @JsonIgnore
    public List<UsersEntity> getUsers() {
        return users;
    }

    public void setUsers(List<UsersEntity> users) {
        this.users = users;
    }

    @ManyToOne(fetch = FetchType.LAZY)
    @JsonIgnore
    @JoinColumn(name = "district_id", referencedColumnName = "id_district", nullable = false)
    public DistrictsEntity getDistrict() {
        return district;
    }

    public void setDistrict(DistrictsEntity district) {
        this.district = district;
    }
}
