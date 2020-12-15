/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.User;

/**
 *
 * @author Vu Ngoc Thinh
 */
public class UserDAO extends DBContext {

    public User getUserByUserName(String username) {
        String sql = "select * from [user] where [User].uid = ?";
        try {
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, username);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                boolean gender = rs.getBoolean("gender");
                return new User(rs.getString("uid"),
                        rs.getString("email"),
                        rs.getString("name"),
                        rs.getString("password"),
                        rs.getDate("dob"),
                        gender,
                        rs.getString("avatar"));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public int updateUser(String uid, String password, String name, String email, Date dob, boolean gender,String avatar) {
        String sql = "UPDATE [dbo].[User]\n"
                + "SET "
                + "[password]= ?,"
                + "[name]= ?,"
                + "[email]= ?,"
                + "[dob]= ?,"
                + "[avatar]= ?,"
                + "[gender]= ?\n"
                + "WHERE uid = ?";
        try {
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, password);
            st.setString(2, name);
            st.setString(3, email);
            st.setDate(4, dob);
            st.setString(5, avatar);
            st.setBoolean(6, gender);
            st.setString(7, uid);
            return st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
        return 0;
    }
    
    

    public int insertUser(User u) {
        String sql = "insert into [dbo].[User] ([uid],[name],[password],[dob],[gender],[avatar],[email]) values (?,?,?,?,?,?,?)";

        try {
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, u.getId());
            st.setString(2, u.getName());
            st.setString(3, u.getPassword());
            st.setDate(4, u.getDob());
            st.setBoolean(5, u.isGender());
            st.setString(6, u.getAvatar());
            st.setString(7, u.getEmail());

            return st.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        }
        return 0;
    }

    public int checkUserAccount(String username, String password) {
        User acc = getUserByUserName(username);
        if (acc == null) {
            return 0; //Account is not available
        } else if (!acc.getPassword().equals(password)) {
            return 1; //Wrong password
        } else {
            return 2; //Account available
        }
    }

}
