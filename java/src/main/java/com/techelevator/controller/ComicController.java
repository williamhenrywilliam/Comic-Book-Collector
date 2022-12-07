package com.techelevator.controller;

import com.techelevator.dao.ComicDao;
import com.techelevator.model.Comic;
import org.springframework.http.HttpStatus;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;

import java.util.List;

@RestController
public class ComicController {

    private ComicDao comicDao;

@RequestMapping(path = "/comics", method = RequestMethod.GET)
public List<Comic> findAll(){return comicDao.findAll();}


@RequestMapping(path = "/comics/{id}", method = RequestMethod.GET)
public Comic getComicById(@PathVariable int id){
    Comic comic = comicDao.getComicById(id);
    if (comic == null) {
        throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Comic not found.");
    } else {
        return comic;
    }
}

@RequestMapping(path = "/comics/author", method = RequestMethod.GET)
 public Comic findByAuthor () {return comicDao.findByAuthor(findByAuthor().getAuthor());}

//@RequestMapping(path = "/comicname", method = RequestMethod.GET)
//public Comic comic{return comicDao.findByComicName();}
















}
