package com.project.fastfood.entities;

import javax.persistence.*;
import java.sql.Timestamp;
import java.util.Objects;

@Entity
@Table(name = "combo", schema = "food_and_drink", catalog = "")
public class ComboEntity {
    private Integer idCombo;
    private Timestamp createAt;
    private Timestamp updateAt;
    private Timestamp deleteAt;
    private Integer deleteFlag;
    private ProductsEntity parentProduct;
    private ProductsEntity childProduct;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_combo", nullable = false)
    public Integer getIdCombo() {
        return idCombo;
    }

    public void setIdCombo(Integer idCombo) {
        this.idCombo = idCombo;
    }

    @Basic
    @Column(name = "create_at", nullable = false)
    public Timestamp getCreateAt() {
        return createAt;
    }

    public void setCreateAt(Timestamp createAt) {
        this.createAt = createAt;
    }

    @Basic
    @Column(name = "update_at", nullable = false)
    public Timestamp getUpdateAt() {
        return updateAt;
    }

    public void setUpdateAt(Timestamp updateAt) {
        this.updateAt = updateAt;
    }

    @Basic
    @Column(name = "delete_at", nullable = false)
    public Timestamp getDeleteAt() {
        return deleteAt;
    }

    public void setDeleteAt(Timestamp deleteAt) {
        this.deleteAt = deleteAt;
    }

    @Basic
    @Column(name = "delete_flag", nullable = false)
    public Integer getDeleteFlag() {
        return deleteFlag;
    }

    public void setDeleteFlag(Integer deleteFlag) {
        this.deleteFlag = deleteFlag;
    }

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "id_parent_product", referencedColumnName = "id_product", nullable = false)
    public ProductsEntity getParentProduct() {
        return parentProduct;
    }

    public void setParentProduct(ProductsEntity parentProduct) {
        this.parentProduct = parentProduct;
    }

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "id_child_product", referencedColumnName = "id_product", nullable = false)
    public ProductsEntity getChildProduct() {
        return childProduct;
    }

    public void setChildProduct(ProductsEntity childProduct) {
        this.childProduct = childProduct;
    }
}
