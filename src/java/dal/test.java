/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.Date;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Random;
import model.Album;
import model.Category;
import model.Chart;
import model.Song;
import model.User;

/**
 *
 * @author Vu Ngoc Thinh
 */
public class test {

    public static void main(String[] args) {
//        AlbumDAO albumDao = new AlbumDAO();
        SongDAO songDAO = new SongDAO();
//        ChartDAO a = new ChartDAO();
//        System.out.println(a.getCharts().get(1).getSongs().get(0).getName());
//        Album album = albumDao.getAlbum("1");
//        // out.print(album.getName());
//        Song song = songDAO.getSong("1");
//        ArrayList<Song> relatedSongs = songDAO.getRelatedSongs(song.getCategory().getId());
//        System.out.println(relatedSongs.size());
//        ArrayList<Song> songs = songDAO.getSongsBySearch("all");
//        System.out.println(songs.size());
//        String strDate = "2000-06-04";
//        Date date = Date.valueOf(strDate);
//        UserDAO userDao = new UserDAO();
//        System.out.println(userDao.updateUser("1", "123", "thinh", "hn@gmail.com", date, true,"huhu"));
            CommentDAO cmtDao = new CommentDAO();
            int to = cmtDao.getTotalComments("1");
            System.out.println(to);
        

    }

    public static String randomId() {

        int leftLimit = 97; // letter 'a'
        int rightLimit = 122; // letter 'z'
        int targetStringLength = 10;
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
