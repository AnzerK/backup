package com.Vmail.dao;

import com.Vmail.entities.Inbox;
import com.Vmail.entities.User;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UserDao {

    private Connection con;

    public UserDao(Connection con) {
        this.con = con;
    }

    public boolean saveUser(User user) {
        boolean f = false;
        try {

            String query = "insert into user(name,email,password,mobile) values(?,?,?,?);";
            PreparedStatement pstmt = this.con.prepareStatement(query);
            pstmt.setString(1, user.getName());
            pstmt.setString(2, user.getEmail());
            pstmt.setString(3, user.getPassword());
            pstmt.setString(4, user.getMobile());
            pstmt.executeUpdate();
            f = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }

    public User getUserByEmailAndPassword(String email, String password) {
        User user = null;
        try {
            String query = "select * from user where email=? and password=?;";
            PreparedStatement pstmt = con.prepareStatement(query);
            pstmt.setString(1, email);
            pstmt.setString(2, password);
            ResultSet set = pstmt.executeQuery();
            if (set.next()) {
                user = new User();
                String name = set.getString("name");
                user.setName(name);
                user.setId(set.getInt("id"));
                user.setEmail(set.getString("email"));
                user.setPassword(set.getString("password"));
                user.setMobile(set.getString("mobile"));
                user.setProfile(set.getString("profile"));

            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return user;
    }

    public boolean updateUser(User user) {
        boolean f = false;
        try {
            //profile=? remoived because of some error
            String query = "update user set name=?,email=?, password=?,mobile=? where id=?";
            PreparedStatement p = con.prepareStatement(query);
            p.setString(1, user.getName());
            p.setString(2, user.getEmail());
            p.setString(3, user.getPassword());
            p.setString(4, user.getMobile());
            //p.setString(5, user.getProfile());
            p.setInt(5, user.getId());
            p.executeUpdate();

            f = true;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }

    public boolean sendMail(Inbox inbox) {
        boolean f = false;
        try {

            String query = "insert into inbox(toemail,fromemail,message,subject) values(?,?,?,?);";
            PreparedStatement pstmt = this.con.prepareStatement(query);
            pstmt.setString(1, inbox.getToemail());
            pstmt.setString(2, inbox.getFromemail());
            pstmt.setString(3, inbox.getMessage());
            pstmt.setString(4, inbox.getSubject());

            pstmt.executeUpdate();
            f = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }

   
}
