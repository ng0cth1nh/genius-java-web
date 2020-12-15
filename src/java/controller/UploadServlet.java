/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.AlbumDAO;
import dal.CategoryDAO;
import dal.CommentDAO;
import dal.SongDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Album;
import model.Category;

/**
 *
 * @author Vu Ngoc Thinh
 */
public class UploadServlet extends HttpServlet {

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
            out.println("<title>Servlet UploadServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet UploadServlet at " + request.getContextPath() + "</h1>");
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
        CategoryDAO categoryDAO = new CategoryDAO();
        ArrayList<String> songNames;
        ArrayList<Category> categoriesData;
        categoriesData = categoryDAO.getCategories();
        SongDAO songDao = new SongDAO();
        // response.sendRedirect("view/upload.jsp");
        songNames = songDao.getNameOfSongs();
        request.setAttribute("songNames", songNames);
        request.setAttribute("categoriesData", categoriesData);
        request.getRequestDispatcher("view/upload.jsp").forward(request, response);
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
        AlbumDAO albumDao = new AlbumDAO();
        String aid;
        String sid = CommentDAO.randomId();
        String album = request.getParameter("album");
        String name = request.getParameter("name");
        String audio = request.getParameter("song");
        String lyric = request.getParameter("lyric");
        String artist = request.getParameter("artist");
        String image = request.getParameter("cover");
        String cid = request.getParameter("genres");
        boolean isSingle;
        if (request.getParameter("issingle") == null) {
            isSingle = false;
            if (albumDao.getAlbumIdByName(album) == null) {
                aid = CommentDAO.randomId();
                System.out.println(albumDao.insertAlbum(aid, album, artist, image, cid, isSingle));
            } else {
                aid = albumDao.getAlbumIdByName(album);
                
            }

        } else {
            isSingle = true;
            aid = CommentDAO.randomId();
            System.out.println(albumDao.insertAlbum(aid, album, artist, image, cid, isSingle));
        }

        SongDAO songDao = new SongDAO();

        System.out.println(songDao.insertSong(sid, name, artist, image, audio, lyric, cid, aid));
        response.sendRedirect("home");

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
