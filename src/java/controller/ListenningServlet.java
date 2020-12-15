/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dal.AlbumDAO;
import dal.CommentDAO;
import dal.PlaylistDAO;
import dal.SongDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Album;
import model.Comment;
import model.Song;
import model.User;

/**
 *
 * @author Vu Ngoc Thinh
 */
public class ListenningServlet extends HttpServlet {

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
            out.println("<title>Servlet ListenningServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ListenningServlet at " + request.getContextPath() + "</h1>");
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
//        response.sendRedirect("view/listen.jsp");
        response.setContentType("text/html");
        response.setContentType("text/html;charset=UTF-8");
        response.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        if (user == null) {
            response.sendRedirect("login");
        } else {
            String aid = request.getParameter("aid");
            String sid = request.getParameter("sid");
            AlbumDAO albumDao = new AlbumDAO();
            SongDAO songDAO = new SongDAO();
            Album album = albumDao.getAlbum(aid);
            CommentDAO cmtDao = new CommentDAO();

            ArrayList<Comment> comments = cmtDao.getComments(sid);
            Song song = songDAO.getSong(sid);
            ArrayList<Song> relatedSongs = songDAO.getRelatedSongs(song.getCategory().getId());
            ArrayList<String> songNames;
                int totalComments = cmtDao.getTotalComments(sid);

            songNames = songDAO.getNameOfSongs();

            request.setAttribute("songNames", songNames);
            request.setAttribute("relatedSongs", relatedSongs);
            request.setAttribute("comments", comments);
            request.setAttribute("song", song);
            request.setAttribute("album", album);
            request.setAttribute("totalComments", totalComments);

            String txt = request.getParameter("index");
            // String sid = request.getParameter("sid");
            int index = 0;
            if (txt == null) {
                index = 1;

            } else {
                index = Integer.parseInt(txt);
            }
            ArrayList<Comment> commentsSlit = cmtDao.getCommentPaging(sid, index);
//            
            request.setAttribute("commentsSlit", commentsSlit);

            PlaylistDAO playListDao = new PlaylistDAO();

            playListDao.updatePlaylist(user.getId(), "1", song.getId());

            request.getRequestDispatcher("view/listen.jsp").forward(request, response);

        }

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
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        CommentDAO cmtDao = new CommentDAO();
        SongDAO songDAO = new SongDAO();

        String content = request.getParameter("comment");
        String sid = request.getParameter("sid");
        Song song = songDAO.getSong(sid);

        long millis = System.currentTimeMillis();
        java.sql.Date date = new java.sql.Date(millis);
        cmtDao.insertComment(user, sid, content, date);
        response.sendRedirect("../genius/listen?aid=" + song.getAlbum().getId() + "&sid=" + sid);
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
