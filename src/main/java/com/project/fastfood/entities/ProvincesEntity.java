package com.project.fastfood.entities;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import javax.persistence.*;
import java.util.List;
import java.util.Objects;

@Entity
@Table(name = "provinces", schema = "food_and_drink", catalog = "")
@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
public class ProvincesEntity {
    private String idProvince;
    private String name;
    private String type;
    private List<DistrictsEntity> districts;

    @Id
    @Column(name = "id_province", nullable = false, length = 5)
    public String getIdProvince() {
        return idProvince;
    }

    public void setIdProvince(String idProvince) {
        this.idProvince = idProvince;
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

    @OneToMany(mappedBy = "province", fetch = FetchType.LAZY)
    @JsonIgnore
    public List<DistrictsEntity> getDistricts() {
        return districts;
    }

    public void setDistricts(List<DistrictsEntity> districts) {
        this.districts = districts;
    }
}
