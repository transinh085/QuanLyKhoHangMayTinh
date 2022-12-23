/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Objects;

public class Phieu {

    private String maPhieu;
    private Timestamp thoiGianTao;
    private String nguoiTao;
    private ArrayList<ChiTietPhieu> CTPhieu;
    private double tongTien;

    public Phieu() {
    }

    public Phieu(String maPhieu, Timestamp thoiGianTao, String nguoiTao, ArrayList<ChiTietPhieu> CTPhieu, double tongTien) {
        this.maPhieu = maPhieu;
        this.thoiGianTao = thoiGianTao;
        this.nguoiTao = nguoiTao;
        this.CTPhieu = CTPhieu;
        this.tongTien = tongTien;
    }

    public Phieu(String maPhieu, Timestamp thoiGianTao, String nguoiTao, double tongTien) {
        this.maPhieu = maPhieu;
        this.thoiGianTao = thoiGianTao;
        this.nguoiTao = nguoiTao;
        this.tongTien = tongTien;
    }

    public String getMaPhieu() {
        return maPhieu;
    }

    public void setMaPhieu(String maPhieu) {
        this.maPhieu = maPhieu;
    }

    public Timestamp getThoiGianTao() {
        return thoiGianTao;
    }

    public void setThoiGianTao(Timestamp thoiGianTao) {
        this.thoiGianTao = thoiGianTao;
    }

    public String getNguoiTao() {
        return nguoiTao;
    }

    public void setNguoiTao(String nguoiTao) {
        this.nguoiTao = nguoiTao;
    }

    public ArrayList<ChiTietPhieu> getCTPhieu() {
        return CTPhieu;
    }

    public void setCTPhieu(ArrayList<ChiTietPhieu> CTPhieu) {
        this.CTPhieu = CTPhieu;
    }

    public double getTongTien() {
        return tongTien;
    }

    public void setTongTien(double tongTien) {
        this.tongTien = tongTien;
    }

    @Override
    public int hashCode() {
        int hash = 7;
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
        final Phieu other = (Phieu) obj;
        if (Double.doubleToLongBits(this.tongTien) != Double.doubleToLongBits(other.tongTien)) {
            return false;
        }
        if (!Objects.equals(this.maPhieu, other.maPhieu)) {
            return false;
        }
        if (!Objects.equals(this.nguoiTao, other.nguoiTao)) {
            return false;
        }
        if (!Objects.equals(this.thoiGianTao, other.thoiGianTao)) {
            return false;
        }
        return Objects.equals(this.CTPhieu, other.CTPhieu);
    }

    @Override
    public String toString() {
        return "Phieu{" + "maPhieu=" + maPhieu + ", thoiGianTao=" + thoiGianTao + ", nguoiTao=" + nguoiTao + ", CTPhieu=" + CTPhieu + ", tongTien=" + tongTien + '}';
    }

}
