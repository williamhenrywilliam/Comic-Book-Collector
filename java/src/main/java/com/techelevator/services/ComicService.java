/*package com.techelevator.services;

import com.techelevator.dao.ComicDao;
import com.techelevator.model.Comic;
import org.springframework.stereotype.Component;
import org.springframework.web.client.RestClientResponseException;
import org.springframework.web.client.RestTemplate;

import java.util.List;

@Component
public class ComicService implements ComicDao {

    private static final String API_URL = "http://localhost:8080/comics";
    private RestTemplate restTemplate = new RestTemplate();

    public List<Comic> findAll() throws RestClientResponseException {
        Comic comic = restTemplate.getForObject(API_URL, Comic.class);
        return (List<Comic>) comic;
    }

    @Override
    public Comic getComicById(int comicId) {
        return null;
    }

    @Override
    public Comic findByComicName(String comicName) {
        return null;
    }

    @Override
    public Comic findByAuthor(String author) {
        return null;
    }

    @Override
    public Comic findIdByComicName(String comicName) {
        return null;
    }

    @Override
    public Comic createComic(Comic comic) {
        return null;
    }
}
*/
