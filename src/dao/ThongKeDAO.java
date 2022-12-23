/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import controller.ConvertDate;
import database.JDBCUtil;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Date;
import model.ThongKeProduct;
import java.sql.*;

/**
 *
 * @author sinh
 */
public class ThongKeDAO {

    public static ThongKeDAO getInstance() {
        return new ThongKeDAO();
    }

    public ArrayList<ThongKeProduct> getThongKe(Date timeStart, Date timeEnd) {
        System.out.println(timeStart);
        System.out.println(timeEnd);

        ArrayList<ThongKeProduct> ketQua = new ArrayList<ThongKeProduct>();
        try {
            Connection con = JDBCUtil.getConnection();
            String sql = "SELECT t1.maMay,tenMay,slNhap,slXuat FROM(\n"
                    + "	SELECT maMay, SUM(soLuong) AS slNhap FROM ChiTietPhieuNhap \n"
                    + "	JOIN PhieuNhap ON PhieuNhap.maPhieu = ChiTietPhieuNhap.maPhieu\n"
                    + "	WHERE thoiGianTao BETWEEN ? AND ?"
                    + "	GROUP BY maMay\n"
                    + ") t1 \n"
                    + "JOIN(\n"
                    + "	SELECT maMay, SUM(soLuong) AS slXuat FROM ChiTietPhieuXuat \n"
                    + "	JOIN PhieuXuat ON PhieuXuat.maPhieu = ChiTietPhieuXuat.maPhieu \n"
                    + "	WHERE thoiGianTao BETWEEN ? AND ?"
                    + "	GROUP BY maMay\n"
                    + ") t2\n"
                    + "ON t1.maMay = t2.maMay\n"
                    + "JOIN MayTinh ON t1.maMay = MayTinh.maMay";
            PreparedStatement pst = con.prepareStatement(sql);
            pst.setTimestamp(1, new Timestamp(timeStart.getTime()));
            pst.setTimestamp(2, new Timestamp(timeEnd.getTime()));
            pst.setTimestamp(3, new Timestamp(timeStart.getTime()));
            pst.setTimestamp(4, new Timestamp(timeEnd.getTime()));

            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                String maMay = rs.getString("maMay");
                String tenMay = rs.getString("tenMay");
                int slNhap = rs.getInt("slNhap");
                int slXuat = rs.getInt("slXuat");
                ThongKeProduct p = new ThongKeProduct(maMay, tenMay, slNhap, slXuat);
                ketQua.add(p);
            }
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        }
        return ketQua;
    }

    public ArrayList<ThongKeProduct> getThongKe() {
        ArrayList<ThongKeProduct> ketQua = new ArrayList<ThongKeProduct>();
        try {
            Connection con = JDBCUtil.getConnection();
            String sql = "SELECT t1.maMay,tenMay,slNhap,slXuat FROM(\n"
                    + "	SELECT maMay, SUM(soLuong) AS slNhap FROM ChiTietPhieuNhap \n"
                    + "	JOIN PhieuNhap ON PhieuNhap.maPhieu = ChiTietPhieuNhap.maPhieu\n"
                    + "	GROUP BY maMay\n"
                    + ") t1 \n"
                    + "JOIN(\n"
                    + "	SELECT maMay, SUM(soLuong) AS slXuat FROM ChiTietPhieuXuat \n"
                    + "	JOIN PhieuXuat ON PhieuXuat.maPhieu = ChiTietPhieuXuat.maPhieu \n"
                    + "	GROUP BY maMay\n"
                    + ") t2\n"
                    + "ON t1.maMay = t2.maMay\n"
                    + "JOIN MayTinh ON t1.maMay = MayTinh.maMay";
            PreparedStatement pst = con.prepareStatement(sql);
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                String maMay = rs.getString("maMay");
                String tenMay = rs.getString("tenMay");
                int slNhap = rs.getInt("slNhap");
                int slXuat = rs.getInt("slXuat");
                ThongKeProduct p = new ThongKeProduct(maMay, tenMay, slNhap, slXuat);
                ketQua.add(p);
            }
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        }
        return ketQua;
    }
}
