package com.Vmail.dao;

import com.Vmail.entities.Inbox;
import java.util.ArrayList;
import java.util.List;
import java.sql.*;

public class MessageDao {

    private Connection con;

    public MessageDao(Connection con) {
        this.con = con;
    }

    public List<Inbox> getInboxMessage(String toemail) {
        List<Inbox> list = new ArrayList<>();
        try {
            String q = "select * from inbox where toemail=?";
            PreparedStatement p = con.prepareStatement(q);
            p.setString(1, toemail);
            ResultSet set = p.executeQuery();

            while (set.next()) {
                int InboxId = set.getInt("id");
                String Toemail = set.getString("toemail");
                String Fromemail = set.getString("fromemail");
                String Subject = set.getString("subject");
                String message = set.getString("message");
                Timestamp date = set.getTimestamp("date");
                Inbox inbox = new Inbox(InboxId, Toemail, Fromemail, message, Subject, date);
                list.add(inbox);

            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    public List<Inbox> getSendMessage(String fromemail) {
        List<Inbox> list = new ArrayList<>();
        try {
            String q = "select * from inbox where fromemail=?";
            PreparedStatement p = con.prepareStatement(q);
            p.setString(1, fromemail);
            ResultSet set = p.executeQuery();

            while (set.next()) {
                int InboxId = set.getInt("id");
                String Toemail = set.getString("toemail");
                String Fromemail = set.getString("fromemail");
                String Subject = set.getString("subject");
                String message = set.getString("message");
                Timestamp date = set.getTimestamp("date");
                Inbox inbox = new Inbox(InboxId, Toemail, Fromemail, message, Subject, date);
                list.add(inbox);

            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    public boolean saveDraft(Inbox inbox) {
        boolean f = false;
        try {
            String q = "insert into draft(toemail,fromemail,subject,message) value(?,?,?,?)";
            PreparedStatement p = con.prepareStatement(q);
            p.setString(1, inbox.getToemail());
            p.setString(2, inbox.getFromemail());
            p.setString(3, inbox.getSubject());
            p.setString(4, inbox.getMessage());
            p.executeUpdate();
            f=true;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }
}
