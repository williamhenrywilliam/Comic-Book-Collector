package com.techelevator.model;

public class Collection {

    private int collectionId;
    private String collection_Name;
    private String userName;
    private String comic_name;

    public Collection(){

    }

    public Collection(int collectionId, String collection_Name, String userName, String comic_name) {
        this.collectionId = collectionId;
        this.collection_Name = collection_Name;
        this.userName = userName;
        this.comic_name = comic_name;
    }

    public int getCollectionId() {
        return collectionId;
    }

    public String getCollectionName() {
        return collection_Name;
    }

    public String getUserName() {
        return userName;
    }

    public String getComic_name() {
        return comic_name;
    }


    public void setCollectionId(int collectionId) {
        this.collectionId = collectionId;
    }

    public void setCollectionName(String collectionName) {
        this.collection_Name = collectionName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public void setComic_name(String comic_name) {
        this.comic_name = comic_name;
    }

    @Override
    public String toString() {
        return "Collection{" +
                "id=" + collectionId +
                ", collectionName='" + collection_Name + '\'' +
                ", username=" + userName +
                ", comicName=" +  +
                '}';
    }



}
