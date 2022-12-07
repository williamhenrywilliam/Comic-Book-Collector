package com.techelevator.model;

public class Collection {

    private int collectionId;
    private String collectionName;


    public Collection(){

    }

    public Collection(int collectionId, String collectionName) {
        this.collectionId = collectionId;
        this.collectionName = collectionName;
    }

    public int getCollectionId() {
        return collectionId;
    }

    public String getCollectionName() {
        return collectionName;
    }



    public void setCollectionId(int collectionId) {
        this.collectionId = collectionId;
    }

    public void setCollectionName(String collectionName) {
        this.collectionName = collectionName;
    }



    @Override
    public String toString() {
        return "Collection{" +
                "id=" + collectionId +
                ", collectionName='" + collectionName + '\'' +
                '}';
    }



}
