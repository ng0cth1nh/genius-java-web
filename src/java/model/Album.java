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
public class Album {

    private String id;
    private String name;
    private String artist;
    private String image;
    private Category category;
    private ArrayList<Song> songs;
    private boolean single;

    public Album() {

    }

    public Album(String id) {
        this.id = id;

    }

    public Album(String id, String name) {
        this.id = id;
        this.name = name;
    }

    public Album(String id, String name, String artist, String image) {
        this.id = id;
        this.name = name;
        this.artist = artist;
        this.image = image;
    }
    
     public Album(String id, String name, String artist, String image, ArrayList<Song> songs) {
        this.id = id;
        this.name = name;
        this.artist = artist;
        this.image = image;
        this.songs = songs;
    }
    public Album(String id, String name, String artist, String image, ArrayList<Song> songs, boolean single) {
        this.id = id;
        this.name = name;
        this.artist = artist;
        this.image = image;
        this.songs = songs;
        this.single = single;
    }

    public Album(String id, String name, String artist, String image, Category category, ArrayList<Song> songs, boolean single) {
        this.id = id;
        this.name = name;
        this.artist = artist;
        this.image = image;
        this.category = category;
        this.songs = songs;
        this.single = single;
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

    public String getArtist() {
        return artist;
    }

    public void setArtist(String artist) {
        this.artist = artist;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public ArrayList<Song> getSongs() {
        return songs;
    }

    public void setSongs(ArrayList<Song> songs) {
        this.songs = songs;
    }

    public boolean isSingle() {
        return single;
    }

    public void setSingle(boolean single) {
        this.single = single;
    }

}
