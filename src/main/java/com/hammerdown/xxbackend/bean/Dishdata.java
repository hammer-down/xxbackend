package com.hammerdown.xxbackend.bean;

import java.sql.Blob;

public class Dishdata {
    private Integer dishid;
    private Blob dishImgUrl;
    private String dishName;
    private Integer dishPrice;
    private String dishDescription;
    private String dishRestaurant;
    private Integer dishFloor;
    private Integer dishWindow;
    private Float dishScore;
    private Byte disStars;

    public Integer getDishid() {
        return dishid;
    }

    public void setDishid(Integer dishid) {
        this.dishid = dishid;
    }

    public Blob getDishImgUrl() {
        return dishImgUrl;
    }

    public void setDishImgUrl(Blob dishImgUrl) {
        this.dishImgUrl = dishImgUrl;
    }

    public String getDishName() {
        return dishName;
    }

    public void setDishName(String dishName) {
        this.dishName = dishName;
    }

    public Integer getDishPrice() {
        return dishPrice;
    }

    public void setDishPrice(Integer dishPrice) {
        this.dishPrice = dishPrice;
    }

    public String getDishDescription() {
        return dishDescription;
    }

    public void setDishDescription(String dishDescription) {
        this.dishDescription = dishDescription;
    }

    public String getDishRestaurant() {
        return dishRestaurant;
    }

    public void setDishRestaurant(String dishRestaurant) {
        this.dishRestaurant = dishRestaurant;
    }

    public Integer getDishFloor() {
        return dishFloor;
    }

    public void setDishFloor(Integer dishFloor) {
        this.dishFloor = dishFloor;
    }

    public Integer getDishWindow() {
        return dishWindow;
    }

    public void setDishWindow(Integer dishWindow) {
        this.dishWindow = dishWindow;
    }

    public Float getDishScore() {
        return dishScore;
    }

    public void setDishScore(Float dishScore) {
        this.dishScore = dishScore;
    }

    public Byte getDisStars() {
        return disStars;
    }

    public void setDisStars(Byte disStars) {
        this.disStars = disStars;
    }
}
