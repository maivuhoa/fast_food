package com.project.fastfood.entities;

import javax.persistence.*;
import java.sql.Timestamp;
import java.util.List;
import java.util.Objects;

@Entity
@Table(name = "orders", schema = "food_and_drink")
public class OrdersEntity {
    private Integer idOrder;
    private Integer status;
    private String name;
    private String address;
    private String phone;
    private String note;
    private Double shipCost;
    private Timestamp createAt;
    private Timestamp updateAt;
    private Timestamp deleteAt;
    private Integer deleteFlag;
    private List<OrderDetailEntity> orderDetails;
    private WardsEntity ward;
    private UsersEntity customer;
    private UsersEntity shiper;

    public OrdersEntity(String name, Integer status, String address, String phone, WardsEntity ward, UsersEntity customer) {
        this.name = name;
        this.status = status;
        this.address = address;
        this.phone = phone;
        this.ward = ward;
        this.customer = customer;
    }

    public OrdersEntity() {
    }

    @Id
    @Column(name = "id_order", nullable = false)
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    public Integer getIdOrder() {
        return idOrder;
    }

    public void setIdOrder(Integer idOrder) {
        this.idOrder = idOrder;
    }

    @Basic
    @Column(name = "status", nullable = true)
    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    @Basic
    @Column(name = "name", nullable = true, length = 100)
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
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
    @Column(name = "note", nullable = true, length = 200)
    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    @Basic
    @Column(name = "ship_cost", nullable = true, precision = 0)
    public Double getShipCost() {
        return shipCost;
    }

    public void setShipCost(Double shipCost) {
        this.shipCost = shipCost;
    }

    @Basic
    @Column(name = "create_at", nullable = true)
    public Timestamp getCreateAt() {
        return createAt;
    }

    public void setCreateAt(Timestamp createAt) {
        this.createAt = createAt;
    }

    @Basic
    @Column(name = "update_at", nullable = true)
    public Timestamp getUpdateAt() {
        return updateAt;
    }

    public void setUpdateAt(Timestamp updateAt) {
        this.updateAt = updateAt;
    }

    @Basic
    @Column(name = "delete_at", nullable = true)
    public Timestamp getDeleteAt() {
        return deleteAt;
    }

    public void setDeleteAt(Timestamp deleteAt) {
        this.deleteAt = deleteAt;
    }

    @Basic
    @Column(name = "delete_flag", nullable = true)
    public Integer getDeleteFlag() {
        return deleteFlag;
    }

    public void setDeleteFlag(Integer deleteFlag) {
        this.deleteFlag = deleteFlag;
    }

    @OneToMany(mappedBy = "order", fetch = FetchType.LAZY)
    public List<OrderDetailEntity> getOrderDetails() {
        return orderDetails;
    }

    public void setOrderDetails(List<OrderDetailEntity> orderDetails) {
        this.orderDetails = orderDetails;
    }

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "ward_id", referencedColumnName = "id_ward")
    public WardsEntity getWard() {
        return ward;
    }

    public void setWard(WardsEntity ward) {
        this.ward = ward;
    }

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "customer_id", referencedColumnName = "id_user")
    public UsersEntity getCustomer() {
        return customer;
    }

    public void setCustomer(UsersEntity customer) {
        this.customer = customer;
    }

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "shiper_id", referencedColumnName = "id_user")
    public UsersEntity getShiper() {
        return shiper;
    }

    public void setShiper(UsersEntity shiper) {
        this.shiper = shiper;
    }
}
