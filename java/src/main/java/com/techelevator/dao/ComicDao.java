package com.techelevator.dao;

import com.techelevator.model.Collection;
import com.techelevator.model.Comic;
import com.techelevator.model.AuthorComicCount;
import java.util.List;
import java.util.Map;

public interface ComicDao {

    List<Comic> findAll();

    Comic getComicById(int comicId);

    Comic getByComicName (String comicName);

    Comic findByAuthor(String author);

    Comic findIdByComicName(String comicName);

    Comic createComic(Comic comic);


    int getComicCount();

    public int getAuthorCount();

    List<AuthorComicCount> getAuthorComicCount();

    int getComicCountByCollectionId(int collectionId);

    List<Comic> findComicsByCollectionId(int collectionId);















}
