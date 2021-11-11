/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.Vmail.helper;

import java.sql.*;

/**
 *
 * @author ashu
 */
public class connectionProvider {

    private static Connection con;

    public static Connection getConnection() {
        try {
            if (con == null) {
                Class.forName("com.mysql.cj.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Vmail", "root", "root");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    return con;
}

}
