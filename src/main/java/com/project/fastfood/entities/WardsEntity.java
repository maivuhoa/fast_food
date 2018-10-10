package com.project.fastfood.entities;

import javax.persistence.*;
import java.util.List;
import java.util.Objects;

@Entity
@Table(name = "wards", schema = "food_and_drink", catalog = "")
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

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        WardsEntity that = (WardsEntity) o;
        return Objects.equals(idWard, that.idWard) &&
                Objects.equals(name, that.name) &&
                Objects.equals(type, that.type) &&
                Objects.equals(location, that.location);
    }

    @Override
    public int hashCode() {
        return Objects.hash(idWard, name, type, location);
    }

    @OneToMany(mappedBy = "ward")
    public List<OrdersEntity> getOrders() {
        return orders;
    }

    public void setOrders(List<OrdersEntity> orders) {
        this.orders = orders;
    }

    @OneToMany(mappedBy = "ward")
    public List<UsersEntity> getUsers() {
        return users;
    }

    public void setUsers(List<UsersEntity> users) {
        this.users = users;
    }

    @ManyToOne
    @JoinColumn(name = "district_id", referencedColumnName = "id_district", nullable = false)
    public DistrictsEntity getDistrict() {
        return district;
    }

    public void setDistrict(DistrictsEntity district) {
        this.district = district;
    }
}
