/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller;

import dao.NhaCungCapDAO;
import java.util.ArrayList;
import model.NhaCungCap;

/**
 *
 * @author sinh
 */
public class SearchNhaCungCap {

    public static SearchNhaCungCap getInstance() {
        return new SearchNhaCungCap();
    }

    public ArrayList<NhaCungCap> searchTatCa(String text) {
        ArrayList<NhaCungCap> result = new ArrayList<>();
        ArrayList<NhaCungCap> armt = NhaCungCapDAO.getInstance().selectAll();
        for (var ncc : armt) {
            if (ncc.getMaNhaCungCap().toLowerCase().contains(text.toLowerCase())
                    || ncc.getTenNhaCungCap().toLowerCase().contains(text.toLowerCase())
                    || ncc.getSdt().toLowerCase().contains(text.toLowerCase())
                    || ncc.getDiaChi().toLowerCase().contains(text.toLowerCase())) {
                result.add(ncc);
            }
        }
        return result;
    }

    public ArrayList<NhaCungCap> searchTenNCC(String text) {
        ArrayList<NhaCungCap> result = new ArrayList<>();
        ArrayList<NhaCungCap> armt = NhaCungCapDAO.getInstance().selectAll();
        for (var ncc : armt) {
            if (ncc.getTenNhaCungCap().toLowerCase().contains(text.toLowerCase())) {
                result.add(ncc);
            }
        }
        return result;
    }

    public ArrayList<NhaCungCap> searchMaNCC(String text) {
        ArrayList<NhaCungCap> result = new ArrayList<>();
        ArrayList<NhaCungCap> armt = NhaCungCapDAO.getInstance().selectAll();
        for (var ncc : armt) {
            if (ncc.getMaNhaCungCap().toLowerCase().contains(text.toLowerCase())) {
                result.add(ncc);
            }
        }
        return result;
    }

    public ArrayList<NhaCungCap> searchDiaChi(String text) {
        ArrayList<NhaCungCap> result = new ArrayList<>();
        ArrayList<NhaCungCap> armt = NhaCungCapDAO.getInstance().selectAll();
        for (var ncc : armt) {
            if (ncc.getDiaChi().toLowerCase().contains(text.toLowerCase())) {
                result.add(ncc);
            }
        }
        return result;
    }

    public ArrayList<NhaCungCap> searchSdt(String text) {
        ArrayList<NhaCungCap> result = new ArrayList<>();
        ArrayList<NhaCungCap> armt = NhaCungCapDAO.getInstance().selectAll();
        for (var ncc : armt) {
            if (ncc.getSdt().toLowerCase().contains(text.toLowerCase())) {
                result.add(ncc);
            }
        }
        return result;
    }
}
