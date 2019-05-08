package com.hammerdown.xxbackend.bean;

public class TpWindow {
    private Integer w_id;
    private String w_site;
    private String w_restaurant;
    private String w_floor;
    private Byte w_state;

    public Integer getW_id() {
        return w_id;
    }

    public void setW_id(Integer w_id) {
        this.w_id = w_id;
    }

    public String getW_site() {
        return w_site;
    }

    public void setW_site(String w_site) {
        this.w_site = w_site;
    }

    public String getW_restaurant() {
        return w_restaurant;
    }

    public void setW_restaurant(String w_restaurant) {
        this.w_restaurant = w_restaurant;
    }

    public String getW_floor() {
        return w_floor;
    }

    public void setW_floor(String w_floor) {
        this.w_floor = w_floor;
    }

    public Byte getW_state() {
        return w_state;
    }

    public void setW_state(Byte w_state) {
        this.w_state = w_state;
    }
}
