package com.project.fastfood.entities;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;

import javax.persistence.*;
import java.io.Serializable;
import java.sql.Timestamp;
import java.util.List;
import java.util.Objects;

@Entity
@Table(name = "products", schema = "food_and_drink", catalog = "")
@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
public class ProductsEntity {
    private Integer idProduct;
    private String name;
    private String description;
    private String image;
    private Double price;
    private Boolean type;
    private Timestamp createAt;
    private Timestamp updateAt;
    private Timestamp deleteAt;
    private Integer deleteFlag;
    private List<OrderDetailEntity> orderDetails;
    private CategoriesEntity category;
    private List<WishListEntity> wishLists;
    private List<ComboEntity> combo;
    private List<ComboEntity> elementOfProductCombos;

    public ProductsEntity() {
    }

    public ProductsEntity(int id, String name, Double price, String image) {
        this.idProduct = id;
        this.name = name;
        this.image = image;
        this.price = price;
    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_product", nullable = false)
    public Integer getIdProduct() {
        return idProduct;
    }

    public void setIdProduct(Integer idProduct) {
        this.idProduct = idProduct;
    }

    @Basic
    @Column(name = "name", nullable = true, length = 45)
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Basic
    @Column(name = "description", nullable = true, length = 45)
    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Basic
    @Column(name = "image", nullable = true, length = 500)
    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    @Basic
    @Column(name = "price", nullable = true, precision = 0)
    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    @Basic
    @Column(name = "type", nullable = true)
    public Boolean getType() {
        return type;
    }

    public void setType(Boolean type) {
        this.type = type;
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

    @OneToMany(mappedBy = "product", fetch = FetchType.LAZY, orphanRemoval = true, cascade = CascadeType.ALL)
    public List<OrderDetailEntity> getOrderDetails() {
        return orderDetails;
    }

    public void setOrderDetails(List<OrderDetailEntity> orderDetails) {
        this.orderDetails = orderDetails;
    }

    @ManyToOne(fetch = FetchType.LAZY)
    @JsonIgnore
    @JoinColumn(name = "category_id", referencedColumnName = "id_category")
    @OnDelete(action = OnDeleteAction.CASCADE)
    public CategoriesEntity getCategory() {
        return category;
    }

    public void setCategory(CategoriesEntity category) {
        this.category = category;
    }

    @OneToMany(mappedBy = "product", fetch = FetchType.LAZY)
    public List<WishListEntity> getWishLists() {
        return wishLists;
    }

    public void setWishLists(List<WishListEntity> wishLists) {
        this.wishLists = wishLists;
    }

    @OneToMany(mappedBy = "parentProduct", fetch = FetchType.LAZY)
    @JsonIgnore
    public List<ComboEntity> getCombo() {
        return combo;
    }

    public void setCombo(List<ComboEntity> combo) {
        this.combo = combo;
    }

    @OneToMany(mappedBy = "childProduct", fetch = FetchType.LAZY)
    @JsonIgnore
    public List<ComboEntity> getElementOfProductCombos() {
        return elementOfProductCombos;
    }

    public void setElementOfProductCombos(List<ComboEntity> elementOfProductCombos) {
        this.elementOfProductCombos = elementOfProductCombos;
    }

    @Override
    public String toString() {
        return idProduct + "|" + name + "|" + price + "|" + image + "|" + type;
    }
}
