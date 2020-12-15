/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Album;
import model.Category;
import model.Song;

/**
 *
 * @author Vu Ngoc Thinh
 */
public class SongDAO extends DBContext {

    public Song getSong(String id) {
        Song song = new Song();
        String sql = "select s.sid as sid, s.name as sname,\n"
                + "s.artirst as artist,s.image as [image],\n"
                + "s.audio as audio,s.lyric as lyric, \n"
                + "c.cid as cid,c.name as cname,\n"
                + "a.aid as aid,a.name as aname\n"
                + "from Song s inner join Category c\n"
                + "on s.cid = c.cid\n"
                + "inner join Album a\n"
                + "on s.aid = a.aid\n"
                + "where s.sid = ?";

        try {
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                song.setId(rs.getString("sid"));
                song.setName(rs.getString("sname"));
                song.setArtist(rs.getString("artist"));
                song.setImage(rs.getString("image"));
                song.setAudio(rs.getString("audio"));
                song.setLyric(rs.getString("lyric"));
                Category c = new Category();
                c.setId(rs.getString("cid"));
                c.setName("cname");
                song.setCategory(c);
                Album a = new Album();
                a.setId(rs.getString("aid"));
                a.setName(rs.getString("aname"));
                song.setAlbum(a);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return song;
    }

    public ArrayList<String> getNameOfSongs() {
        ArrayList<String> list = new ArrayList<>();
        String sql = "select name from song";
        try {
            PreparedStatement st = con.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list.add(rs.getString(1));

            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public ArrayList<Song> getRelatedSongs(String cid) {
        ArrayList<Song> list = new ArrayList<>();
        String sql = "select s.sid,s.name,s.artirst,s.audio,s.image,s.lyric,s.aid,s.cid from song s\n"
                + "inner join Category c\n"
                + "on s.cid = c.cid\n"
                + "where c.cid = ?";
        try {
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, cid);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Song song = new Song();
                song.setId(rs.getString("sid"));
                song.setName(rs.getString("name"));
                song.setArtist(rs.getString("artirst"));
                song.setImage(rs.getString("image"));
                song.setAudio(rs.getString("audio"));
                song.setLyric(rs.getString("lyric"));
                Category c = new Category();
                c.setId(rs.getString("cid"));
                song.setCategory(c);
                Album a = new Album();
                a.setId(rs.getString("aid"));
                song.setAlbum(a);
                if (list.size() == 10) {
                    return list;
                }
                list.add(song);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }

    public ArrayList<Song> getSongsBySearch(String query) {
        ArrayList<Song> list = new ArrayList<>();
        String sql = "select s.sid,s.name,s.artirst,s.audio,s.image,s.lyric,s.aid,s.cid from song s \n"
                + "                inner join album a\n"
                + "                on s.aid = a.aid\n"
                + "                where s.name like ?";
        try {
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, query + "%");
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list.add(new Song(rs.getString("sid"),
                        rs.getString("name"),
                        rs.getString("artirst"),
                        rs.getString("image"),
                        rs.getString("audio"),
                        rs.getString("lyric"),
                        new Album(rs.getString("aid"))));

            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        Collections.sort(list, new Comparator<Song>() {
            @Override
            public int compare(Song o1, Song o2) {
                return extractInt(o1.getId()) - extractInt(o2.getId());
            }

            int extractInt(String s) {
                String num = s.replaceAll("\\D", "");
                // return 0 if no digits found
                return num.isEmpty() ? 0 : Integer.parseInt(num);
            }
        });

        return list;
    }

    public ArrayList<Song> getSongs(String aid) {
        ArrayList<Song> list = new ArrayList<>();
        String sql = "select s.sid,s.name,s.artirst,s.audio,s.image,s.lyric,s.aid,s.cid from song s \n"
                + "inner join album a\n"
                + "on s.aid = a.aid\n"
                + "where a.aid = ?";
        try {
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, aid);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list.add(new Song(rs.getString("sid"),
                        rs.getString("name"),
                        rs.getString("artirst"),
                        rs.getString("image"),
                        rs.getString("audio"),
                        rs.getString("lyric")));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        Collections.sort(list, new Comparator<Song>() {
            @Override
            public int compare(Song o1, Song o2) {
                return extractInt(o1.getId()) - extractInt(o2.getId());
            }

            int extractInt(String s) {
                String num = s.replaceAll("\\D", "");
                // return 0 if no digits found
                return num.isEmpty() ? 0 : Integer.parseInt(num);
            }
        });

        return list;
    }

    public Song getSongForChart(String id) {
        Song song = new Song();
        String sql = "select s.sid as sid, s.name as sname,s.aid as aid,s.artirst as artist,s.image as [image]\n"
                + "					from Song s inner join Category c\n"
                + "					on s.cid = c.cid\n"
                + "					inner join Album a\n"
                + "					on s.aid = a.aid\n"
                + "					where s.sid = ?";

        try {
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                song.setId(rs.getString("sid"));
                song.setName(rs.getString("sname"));
                song.setArtist(rs.getString("artist"));
                song.setImage(rs.getString("image"));
                song.setAlbum(new Album(rs.getString("aid")));

            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return song;
    }

    public int insertSong(String sid, String name, String artist, String image, String audio, String lyric, String cid, String aid) {
        String sql = "INSERT INTO Song(sid,name,artirst,image,audio,lyric,cid,aid) VALUES (?,?,?,?,?,?,?,?)";
        try {
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, sid);
            st.setString(2, name);
            st.setString(3, artist);
            st.setString(4, image);
            st.setString(5, audio);
            st.setString(6, lyric);
            st.setString(7, cid);
            st.setString(8, aid);
            return st.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(AlbumDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return 0;
    }
}
