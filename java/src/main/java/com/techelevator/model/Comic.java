package com.techelevator.model;

import java.time.LocalDate;

public class Comic {

    private int comicId;
    private String comicName;
    private String author;
    private LocalDate releaseDate;
    private int collectionId;
    private String imageURL;

    public int getCollectionId() {
        return collectionId;
    }

    public void setCollectionId(int collectionId) {
        this.collectionId = collectionId;
    }


    public Comic (){}

    public Comic(int comicId, String comicName, String author, LocalDate releaseDate, int collectionId, String imageURL) {
        this.comicId = comicId;
        this.comicName = comicName;
        this.author = author;
        this.releaseDate = releaseDate;
        this.collectionId = collectionId;
        this.imageURL = imageURL;
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

    public void setImageURL(String imageURL) {this.imageURL = imageURL;}






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

    public String getImageURL() {return imageURL;}




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
