/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.Vmail.servlets;

import com.Vmail.dao.MessageDao;
import com.Vmail.dao.UserDao;
import com.Vmail.entities.Inbox;
import com.Vmail.entities.Message;
import com.Vmail.entities.User;
import com.Vmail.helper.connectionProvider;
import com.email.durgesh.Email;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author ashu
 */
@MultipartConfig
public class submitcompose extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet submitcompose</title>");
            out.println("</head>");
            out.println("<body>");
            String Toemail = request.getParameter("Toemail");
            String Fromemail = request.getParameter("Fromemail");
            String Message = request.getParameter("Message");
            String Subject = request.getParameter("subject");
           

            HttpSession s = request.getSession();
            User user = (User) s.getAttribute("currentUser");

            Inbox inbox = new Inbox(Toemail, Fromemail, Message, Subject);
            UserDao dao = new UserDao(connectionProvider.getConnection());
            if (dao.sendMail(inbox)) {
//                    save

//                    out.println("done");
                Message msg2 = new Message("Message Send Successfully", "success", "alert-success");

                s.setAttribute("msg2", msg2);
//                Email send
try {
    
                String username =inbox.getFromemail();
                String pass = "patel37800";
                Email email = new Email(username, pass);
                email.setFrom(username, username);

                email.setSubject(inbox.getSubject());
                
                email.setText(inbox.getMessage());
                email.addRecipient(inbox.getToemail());
                email.send();
                    
                } catch (Exception e) {
                    e.printStackTrace();
                }
                

            } else {
//                out.println("error");

//                MessageDao d=new MessageDao(connectionProvider.getConnection());
//                d.saveDraft(inbox);
                Message msg2 = new Message("Mail Not Send", "error", "alert-danger");

                s.setAttribute("msg2", msg2);

            }
            response.sendRedirect("profile.jsp");

//             HttpSession is=request.getSession();
//             Inbox i=dao.getMessageByEmail(Toemail);
//             is.setAttribute("inboxmessage",i );
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
