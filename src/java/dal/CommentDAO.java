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
import java.util.ArrayList;
import java.util.Random;
import model.Comment;
import model.User;

/**
 *
 * @author Vu Ngoc Thinh
 */
public class CommentDAO extends DBContext {

    public ArrayList<Comment> getComments(String sid) {
        ArrayList<Comment> list = new ArrayList<>();
        String sql = "select c.cmtid,u.uid,u.name,u.avatar,c.content,c.date\n"
                + "from\n"
                + "CommentDetail cd inner join Comment c\n"
                + "on cd.cmtid = c.cmtid\n"
                + "inner join [User] u\n"
                + "on cd.uid = u.uid\n"
                + "inner join Song s\n"
                + "on cd.sid = s.sid\n"
                + "where cd.sid = ?";
        try {
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, sid);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Comment c = new Comment();
                c.setId(rs.getString("cmtid"));
                c.setContent(rs.getString("content"));
                c.setDate(rs.getDate("date"));
                User u = new User();
                u.setId(rs.getString("uid"));
                u.setName(rs.getString("name"));
                u.setAvatar(rs.getString("avatar"));
                c.setUser(u);
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }

    public int getTotalComments(String sid) {
        //ArrayList<Comment> list = new ArrayList<>();
        int size = 0;
        String sql = "SELECT COUNT(t.cmtid) AS counts FROM\n"
                + "(\n"
                + "select c.cmtid,u.uid,u.name,u.avatar,c.content,c.date\n"
                + "from\n"
                + "CommentDetail cd inner join Comment c\n"
                + "on cd.cmtid = c.cmtid\n"
                + "inner join [User] u\n"
                + "on cd.uid = u.uid\n"
                + "inner join Song s\n"
                + "on cd.sid = s.sid\n"
                + "where cd.sid = ?\n"
                + ") as t";
        try {
            PreparedStatement st = con.prepareStatement(sql,
                    ResultSet.TYPE_SCROLL_INSENSITIVE,
                    ResultSet.CONCUR_READ_ONLY);
            st.setString(1, sid);
            ResultSet resultSet = st.executeQuery();
            resultSet.last();
            size = resultSet.getInt(1);
            int total = size / 4;
            if ((size) % 4 != 0) {
                return total + 1;
            } else {
                return total;
            }

        } catch (SQLException e) {
            System.out.println(e);
        }

        return 0;
    }

    public ArrayList<Comment> getCommentPaging(String sid, int index) {
        ArrayList<Comment> list = new ArrayList<>();
        String sql = "select c.cmtid,u.uid,u.name,u.avatar,c.content,c.date\n"
                + "from\n"
                + "CommentDetail cd inner join Comment c\n"
                + "on cd.cmtid = c.cmtid\n"
                + "inner join [User] u\n"
                + "on cd.uid = u.uid\n"
                + "inner join Song s\n"
                + "on cd.sid = s.sid\n"
                + "where cd.sid = ?\n"
                + "order by c.cmtid\n"
                + "OFFSET ? rows FETCH next 4 rows only";
        try {
            PreparedStatement st = con.prepareStatement(sql);
            st.setString(1, sid);
            st.setInt(2, (index * 4 - 4));
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Comment c = new Comment();
                c.setId(rs.getString("cmtid"));
                c.setContent(rs.getString("content"));
                c.setDate(rs.getDate("date"));
                User u = new User();
                u.setId(rs.getString("uid"));
                u.setName(rs.getString("name"));
                u.setAvatar(rs.getString("avatar"));
                c.setUser(u);
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }

    public void insertComment(User user, String sid, String content, Date date) {
        String sql = "INSERT INTO Comment(cmtid,content,date) VALUES (?,?,?)\n"
                + " INSERT INTO CommentDetail(uid,cmtid,sid) VALUES (?,?,?)";
        try {
            PreparedStatement st = con.prepareStatement(sql);
            String cmtid = randomId();
            st.setString(1, cmtid);
            st.setString(2, content);
            st.setDate(3, date);
            st.setString(4, user.getId());
            st.setString(5, cmtid);
            st.setString(6, sid);
            st.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        }

    }

    public static String randomId() {

        int leftLimit = 97; // letter 'a'
        int rightLimit = 122; // letter 'z'
        int targetStringLength = 15;
        Random random = new Random();
        StringBuilder buffer = new StringBuilder(targetStringLength);
        for (int i = 0; i < targetStringLength; i++) {
            int randomLimitedInt = leftLimit + (int) (random.nextFloat() * (rightLimit - leftLimit + 1));
            buffer.append((char) randomLimitedInt);
        }
        String generatedString = buffer.toString();

        return generatedString;
    }
}
