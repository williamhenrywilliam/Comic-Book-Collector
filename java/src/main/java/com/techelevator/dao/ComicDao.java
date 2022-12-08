package com.techelevator.dao;

import com.techelevator.model.Collection;
import com.techelevator.model.Comic;

import java.util.List;

public interface ComicDao {

    List<Comic> findAll();

    Comic getComicById(int comicId);

    Comic getByComicName (String comicName);

    Comic findByAuthor(String author);

    Comic findIdByComicName(String comicName);

    Comic createComic(Comic comic);









}
