/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.Objects;

/**
 *
 * @author sinh
 */
public class ThongKeProduct {
    private String maMay;
    private String tenMay;
    private int slNhap;
    private int slXuat;

    public ThongKeProduct() {
    }

    public ThongKeProduct(String maMay, String tenMay, int slNhap, int slXuat) {
        this.maMay = maMay;
        this.tenMay = tenMay;
        this.slNhap = slNhap;
        this.slXuat = slXuat;
    }

    public String getMaMay() {
        return maMay;
    }

    public void setMaMay(String maMay) {
        this.maMay = maMay;
    }

    public String getTenMay() {
        return tenMay;
    }

    public void setTenMay(String tenMay) {
        this.tenMay = tenMay;
    }

    public int getSlNhap() {
        return slNhap;
    }

    public void setSlNhap(int slNhap) {
        this.slNhap = slNhap;
    }

    public int getSlXuat() {
        return slXuat;
    }

    public void setSlXuat(int slXuat) {
        this.slXuat = slXuat;
    }

    @Override
    public int hashCode() {
        int hash = 5;
        hash = 53 * hash + Objects.hashCode(this.maMay);
        hash = 53 * hash + Objects.hashCode(this.tenMay);
        hash = 53 * hash + this.slNhap;
        hash = 53 * hash + this.slXuat;
        return hash;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final ThongKeProduct other = (ThongKeProduct) obj;
        if (this.slNhap != other.slNhap) {
            return false;
        }
        if (this.slXuat != other.slXuat) {
            return false;
        }
        if (!Objects.equals(this.maMay, other.maMay)) {
            return false;
        }
        return Objects.equals(this.tenMay, other.tenMay);
    }

    @Override
    public String toString() {
        return "ThongKeProduct{" + "maMay=" + maMay + ", tenMay=" + tenMay + ", slNhap=" + slNhap + ", slXuat=" + slXuat + '}';
    }
    
    
}
