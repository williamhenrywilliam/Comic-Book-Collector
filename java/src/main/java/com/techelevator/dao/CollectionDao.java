package com.techelevator.dao;

import com.techelevator.model.Collection;
import com.techelevator.model.User;

import java.util.List;

public interface CollectionDao {

    List<Collection> findAll();

    Collection getCollectionById(int collectionId);

    Collection findByUserName(String userName);

    Collection findByComicName(String comicName);

    Collection findByCollectionName(String collection_Name);

}
