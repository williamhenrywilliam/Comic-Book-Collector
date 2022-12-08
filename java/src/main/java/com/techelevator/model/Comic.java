package com.techelevator.model;

import java.time.LocalDate;

public class Comic {

    private int comicId;
    private String comicName;
    private String author;
    private LocalDate releaseDate;
    private int collectionId;

    public int getCollectionId() {
        return collectionId;
    }

    public void setCollectionId(int collectionId) {
        this.collectionId = collectionId;
    }


    public Comic (){}

    public Comic(int comicId, String comicName, String author, LocalDate releaseDate, int collectionId) {
        this.comicId = comicId;
        this.comicName = comicName;
        this.author = author;
        this.releaseDate = releaseDate;
        this.collectionId = collectionId;
    }

    public void setComicId(int comicId) {
        this.comicId = comicId;
    }

    public void setComicName(String comicName) {
        this.comicName = comicName;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public void setReleaseDate(LocalDate releaseDate) {
        this.releaseDate = releaseDate;
    }






    public int getComicId() {
        return comicId;
    }

    public String getComicName() {
        return comicName;
    }

    public String getAuthor() {
        return author;
    }

    public LocalDate getReleaseDate() {
        return releaseDate;
    }




    @Override
    public String toString() {
        return "Comic{" +
                "comic_id=" + comicId +
                ", comic_name='" + comicName + '\'' +
                ", author=" + author +
                ", release_date" + releaseDate +
                '}';
    }

}
