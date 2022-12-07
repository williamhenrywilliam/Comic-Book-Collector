package com.techelevator.controller;

import com.techelevator.dao.CollectionDao;
import com.techelevator.model.Collection;
import com.techelevator.model.User;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@CrossOrigin
@RequestMapping("/collection")
public class CollectionController {

    private CollectionDao collectionDao;

    public CollectionController(CollectionDao collectionDao){
        this.collectionDao = collectionDao;
    }

    @ResponseStatus(HttpStatus.CREATED)
    @RequestMapping(value = "", method = RequestMethod.POST)
    public Collection createCollection(@RequestBody Collection collection){
        return collectionDao.createCollection(collection);}

    @RequestMapping(path = "", method = RequestMethod.GET)
    public List<Collection> findAll(){
        return collectionDao.findAll();
    }


}
