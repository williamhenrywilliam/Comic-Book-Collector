package com.techelevator.services;

import com.techelevator.dao.ComicDao;
import com.techelevator.model.Comic;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.client.RestClientResponseException;
import org.springframework.web.client.RestTemplate;

import java.util.List;

@CrossOrigin
@Component
public class ComicService{

    private RestTemplate restTemplate = new RestTemplate();

 String API_BASE_URL = "https://gateway/marvel.com";
 String timestamp = String.valueOf(Math.floor(Math.random()));
 String privateKey = "2b4ba3158144bcead6bb12de29e6da73b297e263";
 String publicKey = "4d4fb7a8ee589aa8a41ea7bac53ff77c";


 public ComicService(){}

    public ComicService(String API_BASE_URL, String timestamp, String privateKey, String publicKey){
     this.API_BASE_URL = API_BASE_URL;
     this.privateKey = privateKey;
     this.publicKey = publicKey;
    }
}


