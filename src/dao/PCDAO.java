/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import database.JDBCUtil;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import model.Laptop;
import model.PC;

/**
 *
 * @author Tran Nhat Sinh
 */
public class PCDAO implements DAOInterface<PC> {

    public static PCDAO getInstance() {
        return new PCDAO();
    }

    @Override
    public int insert(PC t) {
        int ketQua = 0;
        try {
            Connection con = JDBCUtil.getConnection();
            String sql = "INSERT INTO MayTinh (maMay, tenMay, soLuong, tenCpu, ram, cardManHinh, gia, mainBoard, congSuatNguon, xuatXu, loaiMay, rom, trangThai) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement pst = con.prepareStatement(sql);
            pst.setString(1, t.getMaMay());
            pst.setString(2, t.getTenMay());
            pst.setInt(3, t.getSoLuong());
            pst.setString(4, t.getTenCpu());
            pst.setString(5, t.getRam());
            pst.setString(6, t.getCardManHinh());
            pst.setDouble(7, t.getGia());
            pst.setString(8, t.getMainBoard());
            pst.setInt(9, t.getCongSuatNguon());
            pst.setString(10, t.getXuatXu());
            pst.setString(11, "PC - Lắp ráp");
            pst.setString(12, t.getRom());
            pst.setInt(13, t.getTrangThai());
            ketQua = pst.executeUpdate();
            JDBCUtil.closeConnection(con);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return ketQua;
    }

    @Override
    public int update(PC t) {
        int ketQua = 0;
        try {
            Connection con = JDBCUtil.getConnection();
            //String sql = "INSERT INTO MayTinh (maMay, tenMay, soLuong, tenCpu, ram, cardManHinh, gia, dungLuongPin, dungLuongPin, dungLuongPin, loaiMay, rom) VALUES (?,?,?,?,?,?,?,?,?,?,?,?)";
            String sql = "UPDATE MayTinh SET maMay=?, tenMay=?, soLuong=?, tenCpu=?, ram=?, cardManHinh=?, gia=?, mainBoard=?, congSuatNguon=?, xuatXu=?, loaiMay = ?, rom = ?, trangThai = ? WHERE maMay= ? ";
            PreparedStatement pst = con.prepareStatement(sql);
            pst.setString(1, t.getMaMay()); 
            pst.setString(2, t.getTenMay());
            pst.setInt(3, t.getSoLuong());
            pst.setString(4, t.getTenCpu());
            pst.setString(5, t.getRam());
            pst.setString(6, t.getCardManHinh());
            pst.setDouble(7, t.getGia());
            pst.setString(8, t.getMainBoard());
            pst.setInt(9, t.getCongSuatNguon());
            pst.setString(10, t.getXuatXu());
            pst.setString(11, "PC - Lắp ráp");
            pst.setString(12, t.getRom());
            pst.setInt(13, t.getTrangThai());
            pst.setString(14, t.getMaMay());
            ketQua = pst.executeUpdate();
            JDBCUtil.closeConnection(con);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return ketQua;
    }

    @Override
    public int delete(PC t) {
        int ketQua = 0;
        try {
            Connection con = JDBCUtil.getConnection();
            String sql = "DELETE FROM MayTinh WHERE maMay=? ";
            PreparedStatement pst = con.prepareStatement(sql);
            pst.setString(1, t.getMaMay());
            ketQua = pst.executeUpdate();
            JDBCUtil.closeConnection(con);
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        }
        return ketQua;
    }

    @Override
    public ArrayList<PC> selectAll() {
        ArrayList<PC> ketQua = new ArrayList<PC>();
        try {
            Connection con = JDBCUtil.getConnection();
            String sql = "SELECT * FROM MayTinh";
            PreparedStatement pst = con.prepareStatement(sql);
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                String maMay = rs.getString("maMay");
                String tenMay = rs.getString("tenMay");
                int soLuong = rs.getInt("soLuong");
                String tenCpu = rs.getString("tenCpu");
                String ram = rs.getString("ram");
                String cardManHinh = rs.getString("cardManHinh");
                double gia = rs.getDouble("gia");
                String mainBoard = rs.getString("mainBoard");
                int congSuatNguon = rs.getInt("congSuatNguon");
                String rom = rs.getString("rom");
                String xuatXu = rs.getString("xuatXu");
                int trangThai = rs.getInt("trangThai");
                PC mt = new PC(mainBoard, congSuatNguon, maMay, tenMay, soLuong, gia, tenCpu, ram, xuatXu, cardManHinh, rom,trangThai);
                ketQua.add(mt);
            }
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        }
        return ketQua;
    }

    @Override
    public PC selectById(String t) {
        PC ketQua = null;
        try {
            Connection con = JDBCUtil.getConnection();
            String sql = "SELECT * FROM MayTinh WHERE maMay=?";
            PreparedStatement pst = con.prepareStatement(sql);
            pst.setString(1, t);
            ResultSet rs = pst.executeQuery();
            while (rs.next()) {
                String maMay = rs.getString("maMay");
                String tenMay = rs.getString("tenMay");
                int soLuong = rs.getInt("soLuong");
                String tenCpu = rs.getString("tenCpu");
                String ram = rs.getString("ram");
                String cardManHinh = rs.getString("cardManHinh");
                double gia = rs.getDouble("gia");
                String mainBoard = rs.getString("mainBoard");
                int congSuatNguon = rs.getInt("congSuatNguon");
                String rom = rs.getString("rom");
                String xuatXu = rs.getString("xuatXu");
                int trangThai = rs.getInt("trangThai");
                //Laptop(String kichThuocMan, String dungLuongPin, String maMay, String tenMay, int soLuong, double gia, String tenCpu, String ram, String xuatXu, String cardManHinh, String Rom)
                ketQua = new PC(mainBoard, congSuatNguon, maMay, tenMay, soLuong, gia, tenCpu, ram, xuatXu, cardManHinh, rom,trangThai);
            }
        } catch (Exception e) {
            // TODO: handle exception
            e.printStackTrace();
        }
        return ketQua;
    }
}
