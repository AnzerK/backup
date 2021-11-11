/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.Vmail.entities;

//import java.security.Timestamp;
import java.sql.Timestamp;

/**
 *
 * @author ashu
 */
public class Inbox {
    private int inboxid;
    private String Toemail;
    private String Fromemail;
    private String message;
    private String subject;
    private Timestamp date;

    public Inbox() {
    }

    public Inbox(int inboxid, String Toemail, String Fromemail, String message,String subject, Timestamp date) {
        this.inboxid = inboxid;
        this.Toemail = Toemail;
        this.Fromemail = Fromemail;
        this.message = message;
        this.subject=subject;
        this.date = date;
    }

    public Inbox(String Toemail, String Fromemail, String message,String subject) {
        this.Toemail = Toemail;
        this.Fromemail = Fromemail;
        this.message = message;
        this.subject=subject;
    }

   

    public int getInboxid() {
        return inboxid;
    }

    public void setInboxid(int inboxid) {
        this.inboxid = inboxid;
    }

    public String getToemail() {
        return Toemail;
    }

    public void setToemail(String Toemail) {
        this.Toemail = Toemail;
    }

    public String getFromemail() {
        return Fromemail;
    }

    public void setFromemail(String Fromemail) {
        this.Fromemail = Fromemail;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Timestamp getDate() {
        return date;
    }

    public void setDate(Timestamp date) {
        this.date = date;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }
    

   
  
    
    
}
