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
import model.Playlist;
import model.Song;

/**
 *
 * @author Vu Ngoc Thinh
 */
public class PlaylistDAO extends DBContext {

    public Playlist getPlaylist(String uid, String pid) {
        Playlist p = new Playlist();
        SongDAO songDao = new SongDAO();
        ArrayList<Song> songs = new ArrayList<>();
        String sql = "select top (5) pd.sid, p.pid ,p.name\n"
                + "from PlaylistDetail pd \n"
                + "inner join Playlist p\n"
                + "on pd.pid = p.pid\n"
                + "inner join [User] u\n"
                + "on pd.uid = u.uid\n"
                + "where u.uid = ? and p.pid = ?\n"
                + "order by pd.id desc";

        try {
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, uid);
            st.setString(2, pid);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                p.setId(rs.getString("pid"));
                p.setName(rs.getString("name"));
                Song song = songDao.getSong(rs.getString("sid"));
                songs.add(song);
                //  p.set;
            }
            p.setSong(songs);

        } catch (SQLException e) {
            System.out.println(e);
        }

        return p;
    }

    public int updatePlaylist(String uid, String pid, String sid) {

        String sql = "INSERT INTO [dbo].[PlaylistDetail]\n"
                + "           ([uid]\n"
                + "           ,[sid]\n"
                + "           ,[pid])\n"
                + "     VALUES\n"
                + "           (?,\n"
                + "           ?,\n"
                + "           ?)\n";

        try {
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, uid);
            st.setString(2, sid);
            st.setString(3, pid);
            return st.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        }

        return 0;

    }
}
