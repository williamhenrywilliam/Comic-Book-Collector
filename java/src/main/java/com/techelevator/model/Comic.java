package com.techelevator.model;

import java.time.LocalDate;
import java.util.Date;

public class Comic {

   private int comic_id;
   private String comic_name;
   private String author;
   private LocalDate release_date;
   private int collectionId;

    public int getCollectionId() {
        return collectionId;
    }

    public void setCollectionId(int collectionId) {
        this.collectionId = collectionId;
    }


    public Comic (){}

    public Comic(int comic_id, String comic_name, String author, LocalDate release_date, int collectionId) {
        this.comic_id = comic_id;
        this.comic_name = comic_name;
        this.author = author;
        this.release_date = release_date;
        this.collectionId = collectionId;
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

    public void setRelease_date(LocalDate release_date) {
        this.release_date = release_date;
    }






    public int getComic_id() {
        return comic_id;
    }

    public String getComicName() {
        return comic_name;
    }

    public String getAuthor() {
        return author;
    }

    public LocalDate getRelease_date() {
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
