package com.project.fastfood.entities;

import javax.persistence.*;
import java.sql.Timestamp;
import java.util.List;
import java.util.Objects;

@Entity
@Table(name = "users", schema = "food_and_drink", catalog = "")
public class UsersEntity {
    private Integer idUser;
    private String username;
    private String password;
    private String fullname;
    private String address;
    private String phone;
    private String email;
    private Integer status;
    private Timestamp createAt;
    private Timestamp updateAt;
    private Timestamp deleteAt;
    private Integer deleteFlag;
    private List<OrdersEntity> customerOrders;
    private List<OrdersEntity> shiperOrders;
    private List<PostsEntity> posts;
    private WardsEntity ward;
    private RolesEntity role;
    private List<WishListEntity> wishLists;

    public UsersEntity(Integer idUser, String username, String password, String fullname, String address, String phone, String email, Integer status) {
        this.idUser = idUser;
        this.username = username;
        this.password = password;
        this.fullname = fullname;
        this.address = address;
        this.phone = phone;
        this.email = email;
        this.status = status;
    }

    public UsersEntity(Integer idUser, String username, String password, String fullname, String address, String phone, String email, Integer status, Integer deleteFlag, RolesEntity role) {
        this.idUser = idUser;
        this.username = username;
        this.password = password;
        this.fullname = fullname;
        this.address = address;
        this.phone = phone;
        this.email = email;
        this.status = status;
        this.deleteFlag = deleteFlag;
        this.role = role;
    }

    public UsersEntity() {
    }

    public UsersEntity(Integer idUser, String username, String password, String fullname, String address, String phone, String email, Integer status, Integer deleteFlag) {
        this.idUser = idUser;
        this.username = username;
        this.password = password;
        this.fullname = fullname;
        this.address = address;
        this.phone = phone;
        this.email = email;
        this.status = status;
        this.deleteFlag = deleteFlag;
    }

    @Id
    @Column(name = "id_user", nullable = false)
    public Integer getIdUser() {
        return idUser;
    }

    public void setIdUser(Integer idUser) {
        this.idUser = idUser;
    }

    @Basic
    @Column(name = "username", nullable = true, length = 100)
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    @Basic
    @Column(name = "password", nullable = true, length = 100)
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Basic
    @Column(name = "fullname", nullable = true, length = 100)
    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
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
    @Column(name = "phone", nullable = true, length = 15)
    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    @Basic
    @Column(name = "email", nullable = true, length = 45)
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
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

    @OneToMany(mappedBy = "customer", fetch = FetchType.LAZY)
    public List<OrdersEntity> getCustomerOrders() {
        return customerOrders;
    }

    public void setCustomerOrders(List<OrdersEntity> customerOrders) {
        this.customerOrders = customerOrders;
    }

    @OneToMany(mappedBy = "shiper", fetch = FetchType.LAZY)
    public List<OrdersEntity> getShiperOrders() {
        return shiperOrders;
    }

    public void setShiperOrders(List<OrdersEntity> shiperOrders) {
        this.shiperOrders = shiperOrders;
    }

    @OneToMany(mappedBy = "user", fetch = FetchType.LAZY)
    public List<PostsEntity> getPosts() {
        return posts;
    }

    public void setPosts(List<PostsEntity> posts) {
        this.posts = posts;
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
    @JoinColumn(name = "role_id", referencedColumnName = "id_role")
    public RolesEntity getRole() {
        return role;
    }

    public void setRole(RolesEntity role) {
        this.role = role;
    }

    @OneToMany(mappedBy = "user", fetch = FetchType.LAZY)
    public List<WishListEntity> getWishLists() {
        return wishLists;
    }

    public void setWishLists(List<WishListEntity> wishLists) {
        this.wishLists = wishLists;
    }
}
