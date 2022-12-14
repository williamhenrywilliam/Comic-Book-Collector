package com.techelevator.dao;

import com.techelevator.model.Collection;
import com.techelevator.model.User;

import java.util.List;

public interface CollectionDao {

    List<Collection> findAll();

    Collection getCollectionById(int collectionId);

    Collection findByCollectionName(String collectionName);

    Collection createCollection(Collection collection);

    Collection linkUserId(Collection collection);

    List<Collection> getCollectionByUserId(int userId);

    int getCollectionCount();

}
