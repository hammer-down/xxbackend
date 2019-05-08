package com.hammerdown.xxbackend.bean;

import java.util.Date;

public class TpManager {

    private Integer m_id;
    private String m_loginid;
    private String m_password;
    private Date m_registertime;
    private Date m_logintime;
    private String m_name;
    private Integer m_wid;

    public Integer getM_id() {
        return m_id;
    }

    public void setM_id(Integer m_id) {
        this.m_id = m_id;
    }

    public String getM_loginid() {
        return m_loginid;
    }

    public void setM_loginid(String m_loginid) {
        this.m_loginid = m_loginid;
    }

    public String getM_password() {
        return m_password;
    }

    public void setM_password(String m_password) {
        this.m_password = m_password;
    }

    public Date getM_registertime() {
        return m_registertime;
    }

    public void setM_registertime(Date m_registertime) {
        this.m_registertime = m_registertime;
    }

    public Date getM_logintime() {
        return m_logintime;
    }

    public void setM_logintime(Date m_logintime) {
        this.m_logintime = m_logintime;
    }

    public String getM_name() {
        return m_name;
    }

    public void setM_name(String m_name) {
        this.m_name = m_name;
    }

    public Integer getM_wid() {
        return m_wid;
    }

    public void setM_wid(Integer m_wid) {
        this.m_wid = m_wid;
    }
}
