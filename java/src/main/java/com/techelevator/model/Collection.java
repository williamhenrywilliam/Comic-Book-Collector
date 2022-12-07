package com.techelevator.model;

public class Collection {

    private int collectionId;
    private String collection_Name;


    public Collection(){

    }

    public Collection(int collectionId, String collection_Name) {
        this.collectionId = collectionId;
        this.collection_Name = collection_Name;
    }

    public int getCollectionId() {
        return collectionId;
    }

    public String getCollectionName() {
        return collection_Name;
    }



    public void setCollectionId(int collectionId) {
        this.collectionId = collectionId;
    }

    public void setCollectionName(String collectionName) {
        this.collection_Name = collectionName;
    }



    @Override
    public String toString() {
        return "Collection{" +
                "id=" + collectionId +
                ", collectionName='" + collection_Name + '\'' +
                '}';
    }



}
