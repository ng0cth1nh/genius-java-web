/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import com.sun.xml.ws.tx.at.v10.types.PrepareResponse;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Album;
import model.Category;
import model.Song;

/**
 *
 * @author Vu Ngoc Thinh
 */
public class AlbumDAO extends DBContext {

    public ArrayList<Album> getAlBumsByGenres(String cid) {
        ArrayList<Album> list = new ArrayList<>();
        String sql = "select a.aid, a.name,a.artist, a.image,a.single, c.name from Album a inner join Category c\n"
                + "on a.cid = c.cid\n"
                + "where c.cid = ?";
        SongDAO sDao = new SongDAO();
        try {
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, cid);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Album a = new Album();
                a.setId(rs.getString("aid"));
                a.setName(rs.getString("name"));
                a.setArtist(rs.getString("artist"));
                a.setImage(rs.getString("image"));
                a.setSingle(rs.getBoolean("single"));
                ArrayList<Song> songs = sDao.getSongs(rs.getString("aid"));
                a.setSongs(songs);
                list.add(a);

            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }

    public ArrayList<Album> getAlBums() {
        ArrayList<Album> list = new ArrayList<>();
        String sql = "select * from Album";
        SongDAO sDao = new SongDAO();
        try {
            PreparedStatement st = con.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Album a = new Album();
                a.setId(rs.getString("aid"));
                a.setName(rs.getString("name"));
                a.setArtist(rs.getString("artist"));
                a.setImage(rs.getString("image"));
                a.setSingle(rs.getBoolean("single"));
                ArrayList<Song> songs = sDao.getSongs(rs.getString("aid"));
                a.setSongs(songs);
                list.add(a);
                if (list.size() == 15) {
                    return list;
                }
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }

    public Album getAlbum(String id) {
        Album a = new Album();
        String sql = "select * from album where aid = ?";
        SongDAO sDao = new SongDAO();
        try {
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                a.setId(rs.getString("aid"));
                a.setName(rs.getString("name"));
                a.setArtist(rs.getString("artist"));
                a.setImage(rs.getString("image"));
                a.setSingle(rs.getBoolean("single"));
                ArrayList<Song> songs = sDao.getSongs(rs.getString("aid"));
                a.setSongs(songs);

            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return a;
    }

    public String getAlbumIdByName(String name) {
        Album a = new Album();
        String sql = "select Album.aid from Album\n"
                + "where Album.name = ?";
      
        try {
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, name);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return rs.getString("aid");

            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public ArrayList<Album> getPoppularAlBums() {
        ArrayList<Album> list = new ArrayList<>();
        SongDAO sDao = new SongDAO();
        String sql = "select a.aid,a.name,a.artist,a.image \n"
                + "from PopularAlbum inner join Album a\n"
                + "on PopularAlbum.aid = a.aid";
        try {
            PreparedStatement st = con.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                ArrayList<Song> songs = sDao.getSongs(rs.getString("aid"));
                Album a = new Album(rs.getString("aid"), rs.getString("name"),
                        rs.getString("artist"), rs.getString("image"), songs);
                list.add(a);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }

    public ArrayList<Album> getNewAlBums() {
        ArrayList<Album> list = new ArrayList<>();
        SongDAO sDao = new SongDAO();
        String sql = "select NewRelease.aid,name,artist,image from NewRelease\n"
                + "inner join Album\n"
                + "on NewRelease.aid = Album.aid";
        try {
            PreparedStatement st = con.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                ArrayList<Song> songs = sDao.getSongs(rs.getString("aid"));
                Album a = new Album(rs.getString("aid"), rs.getString("name"),
                        rs.getString("artist"), rs.getString("image"), songs);
                list.add(a);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }

    public int insertAlbum(String aid, String name, String artist, String image, String cid, boolean issingle) {
        String sql = "INSERT INTO Album(aid,name,artist,image,cid,single) VALUES (?,?,?,?,?,?)";
        try {
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, aid);
            st.setString(2, name);
            st.setString(3, artist);
            st.setString(4, image);
            st.setString(5, cid);
            st.setBoolean(6, issingle);
            return st.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AlbumDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return 0;
    }
}
