/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.Objects;

public class MayTinh {
    private String maMay;
    private String tenMay;
    private int soLuong;
    private double gia;
    private String tenCpu;
    private String ram;
    private String xuatXu;
    private String cardManHinh;
    private String Rom;
    private int trangThai;
    

    public MayTinh() {
        
    }
    
    public MayTinh(String maMay, String tenMay, int soLuong, double donGia, String boXuLi, String loaiMay, int trangThai){
        
    }

    public MayTinh(String maMay, String tenMay, int soLuong, double gia, String tenCpu, String ram, String xuatXu, String cardManHinh, String Rom,int trangThai) {
        this.maMay = maMay;
        this.tenMay = tenMay;
        this.soLuong = soLuong;
        this.gia = gia;
        this.tenCpu = tenCpu;
        this.ram = ram;
        this.xuatXu = xuatXu;
        this.cardManHinh = cardManHinh;
        this.Rom = Rom;
        this.trangThai = trangThai;
    }

    public int getTrangThai() {
        return trangThai;
    }

    public void setTrangThai(int trangThai) {
        this.trangThai = trangThai;
    }

    public MayTinh(String maMay, String tenMay, int soLuong, double gia,String tenCpu, String ram,String Rom) {
        this.maMay = maMay;
        this.tenMay = tenMay;
        this.soLuong = soLuong;
        this.gia = gia;
        this.tenCpu = tenCpu;
        this.ram = ram;
        this.Rom = Rom;
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

    public int getSoLuong() {
        return soLuong;
    }

    public void setSoLuong(int soLuong) {
        this.soLuong = soLuong;
    }

    public double getGia() {
        return gia;
    }

    public void setGia(double gia) {
        this.gia = gia;
    }

    public String getTenCpu() {
        return tenCpu;
    }

    public void setTenCpu(String tenCpu) {
        this.tenCpu = tenCpu;
    }

    public String getRam() {
        return ram;
    }

    public void setRam(String ram) {
        this.ram = ram;
    }

    public String getXuatXu() {
        return xuatXu;
    }

    public void setXuatXu(String xuatXu) {
        this.xuatXu = xuatXu;
    }

    public String getCardManHinh() {
        return cardManHinh;
    }

    public void setCardManHinh(String cardManHinh) {
        this.cardManHinh = cardManHinh;
    }

    public String getRom() {
        return Rom;
    }

    public void setRom(String Rom) {
        this.Rom = Rom;
    }

    public void xuatHang(int sl) {
        this.soLuong -= sl;
    }
    
    @Override
    public String toString() {
        return "MayTinh{" + "maMay=" + maMay + ", tenMay=" + tenMay + ", soLuong=" + soLuong + ", gia=" + gia + ", tenCpu=" + tenCpu + ", ram=" + ram + ", xuatXu=" + xuatXu + ", cardManHinh=" + cardManHinh + ", Rom=" + Rom + '}';
    }

    @Override
    public int hashCode() {
        int hash = 3;
        hash = 37 * hash + Objects.hashCode(this.maMay);
        hash = 37 * hash + Objects.hashCode(this.tenMay);
        hash = 37 * hash + this.soLuong;
        hash = 37 * hash + (int) (Double.doubleToLongBits(this.gia) ^ (Double.doubleToLongBits(this.gia) >>> 32));
        hash = 37 * hash + Objects.hashCode(this.tenCpu);
        hash = 37 * hash + Objects.hashCode(this.ram);
        hash = 37 * hash + Objects.hashCode(this.xuatXu);
        hash = 37 * hash + Objects.hashCode(this.cardManHinh);
        hash = 37 * hash + Objects.hashCode(this.Rom);
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
        final MayTinh other = (MayTinh) obj;
        if (this.soLuong != other.soLuong) {
            return false;
        }
        if (Double.doubleToLongBits(this.gia) != Double.doubleToLongBits(other.gia)) {
            return false;
        }
        if (!Objects.equals(this.maMay, other.maMay)) {
            return false;
        }
        if (!Objects.equals(this.tenMay, other.tenMay)) {
            return false;
        }
        if (!Objects.equals(this.tenCpu, other.tenCpu)) {
            return false;
        }
        if (!Objects.equals(this.ram, other.ram)) {
            return false;
        }
        if (!Objects.equals(this.xuatXu, other.xuatXu)) {
            return false;
        }
        if (!Objects.equals(this.cardManHinh, other.cardManHinh)) {
            return false;
        }
        return Objects.equals(this.Rom, other.Rom);
    }
}
