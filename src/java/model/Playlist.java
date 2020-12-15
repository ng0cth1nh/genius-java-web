/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.ArrayList;

/**
 *
 * @author Vu Ngoc Thinh
 */
public class Playlist {
    private String id;
    private String name;
    private ArrayList<Song> song;

    public Playlist() {
    }

    public Playlist(String id, String name) {
        this.id = id;
        this.name = name;
    }
    

    public Playlist(String id, String name, ArrayList<Song> song) {
        this.id = id;
        this.name = name;
        this.song = song;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public ArrayList<Song> getSong() {
        return song;
    }

    public void setSong(ArrayList<Song> song) {
        this.song = song;
    }
    
    
    
}
