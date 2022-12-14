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

    @RequestMapping(path = "/{id}", method = RequestMethod.GET)
    public Collection getCollectionById(@PathVariable int id){return collectionDao.getCollectionById(id);}

   @RequestMapping(path = "/user/{userId}", method = RequestMethod.GET)
    public List<Collection> getCollectionByUserId(@PathVariable int userId) {
        return collectionDao.getCollectionByUserId(userId);
    }

    @RequestMapping(path = "/count", method = RequestMethod.GET)
    public int getCollectionCount() {
        return collectionDao.getCollectionCount();
    }




}
