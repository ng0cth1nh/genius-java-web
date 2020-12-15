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
public class Category {

    private String id;
    private String name;
    private ArrayList<Album> albums;

    public Category() {
    }
    public Category(String id) {
        this.id = id;
    }
    

    public Category(String id, String name) {
        this.id = id;
        this.name = name;
    }
    

    public Category(String id, String name, ArrayList<Album> albums) {
        this.id = id;
        this.name = name;
        this.albums = albums;
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

    public ArrayList<Album> getAlbums() {
        return albums;
    }

    public void setAlbums(ArrayList<Album> albums) {
        this.albums = albums;
    }
    


}
