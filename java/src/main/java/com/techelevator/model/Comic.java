package com.techelevator.model;

import java.util.Date;

public class Comic {

   private int comic_id;
   private String comic_name;
   private String author;
    private Date release_date;

    public Comic (){}

    public Comic(int comic_id, String comic_name, String author, Date release_date) {
        this.comic_id = comic_id;
        this.comic_name = comic_name;
        this.author = author;
        this.release_date = release_date;
    }

    public void setComic_id(int comic_id) {
        this.comic_id = comic_id;
    }

    public void setComicName(String comic_name) {
        this.comic_name = comic_name;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public void setRelease_date(Date release_date) {
        this.release_date = release_date;
    }

    public void setCollection_id(int collection_id){this.collection_id = collection_id;}




    public int getComic_id() {
        return comic_id;
    }

    public String getComicName() {
        return comic_name;
    }

    public String getAuthor() {
        return author;
    }

    public Date getRelease_date() {
        return release_date;
    }




    @Override
    public String toString() {
        return "Comic{" +
                "comic_id=" + comic_id +
                ", comic_name='" + comic_name + '\'' +
                ", author=" + author +
                ", release_date" + release_date +
                '}';
    }

}
