/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.PlaylistDAO;
import dal.UserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Playlist;
import model.User;

/**
 *
 * @author Vu Ngoc Thinh
 */
public class LoginServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
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

        request.getRequestDispatcher("view/login.jsp").forward(request, response);

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

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String rem = request.getParameter("rem");
        String errMess = null;
        UserDAO userDAO = new UserDAO();

        int result = userDAO.checkUserAccount(username, password);

        System.out.println(result);
        try {
            if (result == 0) {
                errMess = "Incorrect username.";
            } else if (result == 1) {
                errMess = "Incorrect password.";
            }
        } catch (Exception e) {
            errMess = e.getMessage();
        }

        if (errMess != null) {
            request.setAttribute("errorMessage", errMess);
            String path = "/view/login.jsp";
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(path);
            dispatcher.forward(request, response);
            return;
        }
        User user = userDAO.getUserByUserName(username);
        HttpSession session = request.getSession(true);
        session.setAttribute("user", user);
        Cookie uc = new Cookie("cuser", username);
        Cookie pc = new Cookie("cpass", password);
        Cookie rc = new Cookie("crem", rem);

        if (rem != null) {
            uc.setMaxAge(60 * 60 * 24 * 15);
            pc.setMaxAge(60 * 60 * 24 * 15);
            rc.setMaxAge(60 * 60 * 24 * 15);
        } else {
            uc.setMaxAge(0);
            pc.setMaxAge(0);
            rc.setMaxAge(0);
        }
        response.addCookie(uc);
        response.addCookie(pc);
        response.addCookie(rc);

        //request.getRequestDispatcher("view/home.jsp").forward(request, response);
        //request.getRequestDispatcher("home").forward(request, response);
        response.sendRedirect("home");
        //request.getRequestDispatcher("../genius/home");
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
