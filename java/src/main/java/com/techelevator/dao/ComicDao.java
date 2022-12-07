package com.techelevator.dao;

import com.techelevator.model.Comic;

import java.util.List;

public interface ComicDao {

    List<Comic> findAll();

    Comic getComicById(int comic_id);

    Comic findByComicName (String comic_name);

    Comic findByAuthor(String author);

    Comic findIdByComicName(String comic_name);







}
