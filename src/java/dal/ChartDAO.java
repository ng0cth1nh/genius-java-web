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
import model.Chart;
import model.Song;

/**
 *
 * @author Vu Ngoc Thinh
 */
public class ChartDAO extends DBContext {

    private SongDAO songdb;

    public ArrayList<Chart> getCharts() {
        songdb = new SongDAO();
        ArrayList<Chart> charts = new ArrayList<>();
        ArrayList<Song> songs1 = new ArrayList<>();
        ArrayList<Song> songs2 = new ArrayList<>();
        ArrayList<Song> songs3 = new ArrayList<>();
        Chart c1 = new Chart();
        Chart c2 = new Chart();
        Chart c3 = new Chart();
        String sql = "select chart.chartid,chart.name,ChartDetail.sid\n"
                + "from chart inner join ChartDetail\n"
                + "on chart.chartid = ChartDetail.chartid";
        try {
            PreparedStatement st = con.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                
                if (rs.getString("chartid").equals("1")) {
                    c1.setId(rs.getString(1));
                    c1.setName(rs.getString(2));
                    songs1.add(songdb.getSongForChart(rs.getString(3)));

                } else if (rs.getString("chartid").equals("2")) {
                    c2.setId(rs.getString(1));
                    c2.setName(rs.getString(2));
                    songs2.add(songdb.getSongForChart(rs.getString(3)));
                } else {
                    c3.setId(rs.getString(1));
                    c3.setName(rs.getString(2));
                    songs3.add(songdb.getSongForChart(rs.getString(3)));
                }

            }
            c1.setSongs(songs1);
            c2.setSongs(songs2);
            c3.setSongs(songs3);
            charts.add(c1);
            charts.add(c2);
            charts.add(c3);
        } catch (SQLException e) {
            System.out.println(e);
        }
        return charts;
    }

}
