/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.AlbumDAO;
import dal.CategoryDAO;
import dal.ChartDAO;
import dal.PlaylistDAO;
import dal.SongDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Album;
import model.Category;
import model.Chart;
import model.Playlist;
import model.User;

/**
 *
 * @author Vu Ngoc Thinh
 */
@WebServlet(name = "HomeServlet", urlPatterns = {"/home"})
public class HomeServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
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
            out.println("<title>Servlet HomeServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet HomeServlet at " + request.getContextPath() + "</h1>");
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
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");

        AlbumDAO albumDAO = new AlbumDAO();
        ChartDAO chartDAO = new ChartDAO();
        CategoryDAO categoryDAO = new CategoryDAO();
        SongDAO songDao = new SongDAO();
        

        ArrayList<Album> albumData;
        ArrayList<Album> popularAlbumsData;
        ArrayList<Album> newAlbumsData;
        ArrayList<Chart> chartData;
        ArrayList<Category> categoriesData;
        ArrayList<String> songNames;

        songNames = songDao.getNameOfSongs();
        albumData = albumDAO.getAlBums();
        chartData = chartDAO.getCharts();
        newAlbumsData = albumDAO.getNewAlBums();
        categoriesData = categoryDAO.getCategories();
        popularAlbumsData = albumDAO.getPoppularAlBums();

        request.setAttribute("songNames", songNames);
        request.setAttribute("chartData", chartData);
        request.setAttribute("albumData", albumData);
        request.setAttribute("newAlbumsData", newAlbumsData);
        request.setAttribute("categoriesData", categoriesData);
        request.setAttribute("popularAlbumsData", popularAlbumsData);
        if (user != null) {
            PlaylistDAO playlistDao = new PlaylistDAO();
            Playlist recentPlaylist = playlistDao.getPlaylist(user.getId(), "1");
            Playlist playlistForYou = playlistDao.getPlaylist(user.getId(), "2");
            request.setAttribute("recentPlaylist", recentPlaylist);
            request.setAttribute("playlistForYou", playlistForYou);
        } 
        request.getRequestDispatcher("view/home.jsp").forward(request, response);
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
