package com.project.fastfood.entities;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import javax.persistence.*;
import java.util.List;
import java.util.Objects;

@Entity
@Table(name = "districts", schema = "food_and_drink")
@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
public class DistrictsEntity {
    private String idDistrict;
    private String name;
    private String type;
    private String location;
    private ProvincesEntity province;
    private List<WardsEntity> wards;

    @Id
    @Column(name = "id_district", nullable = false, length = 5)
    public String getIdDistrict() {
        return idDistrict;
    }

    public void setIdDistrict(String idDistrict) {
        this.idDistrict = idDistrict;
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

    @ManyToOne(fetch = FetchType.LAZY)
    @JsonIgnore
    @JoinColumn(name = "province_id", referencedColumnName = "id_province", nullable = false)
    public ProvincesEntity getProvince() {
        return province;
    }

    public void setProvince(ProvincesEntity province) {
        this.province = province;
    }

    @OneToMany(mappedBy = "district", fetch = FetchType.LAZY)
    @JsonIgnore
    public List<WardsEntity> getWards() {
        return wards;
    }

    public void setWards(List<WardsEntity> wards) {
        this.wards = wards;
    }
}
