/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller;

import dao.AccountDAO;
import java.util.ArrayList;
import model.Account;

/**
 *
 * @author sinh
 */
public class SearchAccount {

    public static SearchAccount getInstance() {
        return new SearchAccount();
    }

    public ArrayList<Account> searchTatCaAcc(String text) {
        ArrayList<Account> result = new ArrayList<>();
        ArrayList<Account> armt = AccountDAO.getInstance().selectAll();
        for (var ncc : armt) {
            if (ncc.getFullName().toLowerCase().contains(text.toLowerCase())
                    || ncc.getUser().toLowerCase().contains(text.toLowerCase())
                    || ncc.getRole().toLowerCase().contains(text.toLowerCase())) {
                result.add(ncc);
            }
        }
        return result;
    }

    public ArrayList<Account> searchFullName(String text) {
        ArrayList<Account> result = new ArrayList<>();
        ArrayList<Account> armt = AccountDAO.getInstance().selectAll();
        for (var ncc : armt) {
            if (ncc.getFullName().toLowerCase().contains(text.toLowerCase())) {
                result.add(ncc);
            }
        }
        return result;
    }

    public ArrayList<Account> searchUserName(String text) {
        ArrayList<Account> result = new ArrayList<>();
        ArrayList<Account> armt = AccountDAO.getInstance().selectAll();
        for (var ncc : armt) {
            if (ncc.getUser().toLowerCase().contains(text.toLowerCase())) {
                result.add(ncc);
            }
        }
        return result;
    }

    public ArrayList<Account> searchRole(String text) {
        ArrayList<Account> result = new ArrayList<>();
        ArrayList<Account> armt = AccountDAO.getInstance().selectAll();
        for (var ncc : armt) {
            if (ncc.getRole().toLowerCase().contains(text.toLowerCase())) {
                result.add(ncc);
            }
        }
        return result;
    }
}
