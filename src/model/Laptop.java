/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.Objects;

/**
 *
 * @author Tran Nhat Sinh
 */
public class Laptop extends MayTinh{
    private double kichThuocMan;
    private String dungLuongPin;

    public Laptop(double kichThuocMan, String dungLuongPin, String maMay, String tenMay, int soLuong, double gia, String tenCpu, String ram, String xuatXu, String cardManHinh, String Rom, int trangThai) {
        super(maMay, tenMay, soLuong, gia, tenCpu, ram, xuatXu, cardManHinh, Rom,trangThai);
        this.kichThuocMan = kichThuocMan;
        this.dungLuongPin = dungLuongPin;
    }

    public Laptop() {
        
    }

    public double getkichThuocMan() {
        return kichThuocMan;
    }

    public void setkichThuocMan(double kichThuocMan) {
        this.kichThuocMan = kichThuocMan;
    }

    public String getDungLuongPin() {
        return dungLuongPin;
    }

    public void setDungLuongPin(String dungLuongPin) {
        this.dungLuongPin = dungLuongPin;
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 67 * hash + Objects.hashCode(this.kichThuocMan);
        hash = 67 * hash + Objects.hashCode(this.dungLuongPin);
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
        final Laptop other = (Laptop) obj;
        if (!Objects.equals(this.kichThuocMan, other.kichThuocMan)) {
            return false;
        }
        return Objects.equals(this.dungLuongPin, other.dungLuongPin);
    }

    @Override
    public String toString() {
        return "Laptop{" + "kichThuocMan=" + kichThuocMan + ", dungLuongPin=" + dungLuongPin + '}';
    }


    
    
}
