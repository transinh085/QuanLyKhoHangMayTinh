/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package controller;

import java.util.Date;

/**
 *
 * @author sinh
 */
public class Test {

    public static void main(String[] args) {
        String password = "admin";
        String hash = BCrypt.hashpw(password, BCrypt.gensalt(12));
        System.out.println("BCrypt hash: " + hash);
        boolean valuate = BCrypt.checkpw(password, "$2a$12$z4LV6HekAKa8mgywwiZtQO29YnXRRPx38TxEGOQNMT411TsUuFSYO");
        System.out.println(valuate);
        SendEmailSMTP.sendOTP("sinhbaoreact2003@gmail.com","12345");
    }
}
