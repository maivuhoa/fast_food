package com.project.fastfood.entities;

import javax.persistence.*;
import java.sql.Timestamp;
import java.util.Objects;

@Entity
@Table(name = "wish_list", schema = "food_and_drink", catalog = "")
public class WishListEntity {
    private Integer idWish;
    private Timestamp createAt;
    private Timestamp updateAt;
    private Timestamp deleteAt;
    private Integer deleteFlag;
    private UsersEntity user;
    private ProductsEntity product;

    @Id
    @Column(name = "id_wish", nullable = false)
    public Integer getIdWish() {
        return idWish;
    }

    public void setIdWish(Integer idWish) {
        this.idWish = idWish;
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

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "user_id", referencedColumnName = "id_user")
    public UsersEntity getUser() {
        return user;
    }

    public void setUser(UsersEntity user) {
        this.user = user;
    }

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "product_id", referencedColumnName = "id_product")
    public ProductsEntity getProduct() {
        return product;
    }

    public void setProduct(ProductsEntity product) {
        this.product = product;
    }
}
