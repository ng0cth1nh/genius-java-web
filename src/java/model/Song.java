/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Vu Ngoc Thinh
 */
public class Song {
    private String id;
    private String name;
    private String artist;
    private String image;
    private String audio;
    private String lyric;
    private Category category;
    private Album album;

    public Song() {
    }

    public Song(String id, String name, String artist, String image) {
        this.id = id;
        this.name = name;
        this.artist = artist;
        this.image = image;
    }

    public Song(String id, String name, String artist, String image, Album album) {
        this.id = id;
        this.name = name;
        this.artist = artist;
        this.image = image;
        this.album = album;
    }
    

    public Song(String id, String name, String artist, String image, String audio, String lyric) {
        this.id = id;
        this.name = name;
        this.artist = artist;
        this.image = image;
        this.audio = audio;
        this.lyric = lyric;
    }
     public Song(String id, String name, String artist, String image, String audio, String lyric,  Album album) {
        this.id = id;
        this.name = name;
        this.artist = artist;
        this.image = image;
        this.audio = audio;
        this.lyric = lyric;
        this.album = album;
    }

    
    public Song(String id, String name, String artist, String image, String audio, String lyric, Category category, Album album) {
        this.id = id;
        this.name = name;
        this.artist = artist;
        this.image = image;
        this.audio = audio;
        this.lyric = lyric;
        this.category = category;
        this.album = album;
    }

    public String getLyric() {
        return lyric;
    }

    public void setLyric(String lyric) {
        this.lyric = lyric;
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

    public String getAudio() {
        return audio;
    }

    public void setAudio(String audio) {
        this.audio = audio;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public Album getAlbum() {
        return album;
    }

    public void setAlbum(Album album) {
        this.album = album;
    }
    
    
}
