package com.techelevator.controller;

import com.techelevator.dao.UserDao;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import javax.validation.Valid;

import com.techelevator.model.*;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;

import com.techelevator.dao.UserDao;
import com.techelevator.security.jwt.JWTFilter;
import com.techelevator.security.jwt.TokenProvider;

import java.util.List;

@RestController
@CrossOrigin
@RequestMapping("/users")
public class UserController {

    private UserDao userDao;

    public UserController(UserDao userDao){
        this.userDao = userDao;
    }

    @RequestMapping(path = "", method = RequestMethod.GET)
    public List<User> findAll(){
        return userDao.findAll();
    }

    @RequestMapping(path = "/{id}", method = RequestMethod.GET)
    public User getUserById(@PathVariable int userId){return userDao.getUserById(userId);}

    @RequestMapping(value = "/username/{username}", method = RequestMethod.GET)
    public int findIdByUsername(@PathVariable String username){return userDao.findIdByUsername(username);}

    @RequestMapping(value = "/{username}", method = RequestMethod.GET)
    public User findByUsername(@PathVariable String username){return userDao.findByUsername((username));}



}
