/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package database;

import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.DriverManager;
import javax.swing.JOptionPane;
public class JDBCUtil {
	public static Connection getConnection() {
		Connection c = null;
		try {
			// Dang ky MySQL Driver voi DriverManager
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			//Cac thong so
			String url = "jdbc:mySQL://localhost:3306/quanlimaytinh";
			String userName = "root";
			String password = "";
			//Tao ket noi 
			c = DriverManager.getConnection(url, userName, password);
		} catch (Exception e) {
			// TODO: handle exception
//			JOptionPane.showMessageDialog(null, "Không thể kết nối đến cơ sở dữ liệu !","Lỗi", JOptionPane.ERROR_MESSAGE);
		}
		return c;
	}
	public static void closeConnection(Connection c) {
		try {
			if(c!=null) {
				c.close();
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	public static void printInfo(Connection c) {
		try {
			if (c != null) {
				DatabaseMetaData mtdt = c.getMetaData();
				System.out.println(mtdt.getDatabaseProductName());
				System.out.println(mtdt.getDatabaseProductVersion());
			} 
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
}
