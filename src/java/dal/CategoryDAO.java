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
import model.Album;
import model.Category;

/**
 *
 * @author Vu Ngoc Thinh
 */
public class CategoryDAO extends DBContext {

    public ArrayList<Category> getCategories() {
        ArrayList<Category> list = new ArrayList<>();
        String sql = "select * from Category";
        try {
            PreparedStatement st = con.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Category c = new Category(rs.getString("cid"), rs.getString("name"));
                list.add(c);

            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }

    public Category getCategory(String cid) {
        String sql = "select * from Category where cid=?";
        try {
            AlbumDAO albumDao = new AlbumDAO();
           
            PreparedStatement st = con.prepareStatement(sql);          
            st.setString(1, cid);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                
                return new Category(rs.getString("cid"), rs.getString("name"),albumDao.getAlBumsByGenres(rs.getString("cid")));
                
                

            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return null;
    }
}
