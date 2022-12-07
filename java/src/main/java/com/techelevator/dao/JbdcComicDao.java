package com.techelevator.dao;


import com.techelevator.model.Comic;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Component
public class JbdcComicDao implements ComicDao {

    private final JdbcTemplate jdbcTemplate;

    public JbdcComicDao(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
   }

    @Override
    public List <Comic> findAll(){
        List<Comic> comic = new ArrayList<>();
        String sql = "SELECT * FROM comic";

       SqlRowSet results = jdbcTemplate.queryForRowSet(sql);
        while (results.next()) {
            comic.add(mapRowToComic(results));
        }
        return comic;
    }

    @Override
    public Comic getComicById(int comicId){
        String sql = "";
        SqlRowSet results = jdbcTemplate.queryForRowSet(sql,comicId);
        if(results.next()){
            return mapRowToComic(results);
        }else{
            System.out.println("ERROR: NO COMIC FOUND FOR SPECIFIED COMIC ID");
            return null;
        }
    }

    @Override
    public Comic findByComicName(String comicName){
        String sql = "";
        SqlRowSet results = jdbcTemplate.queryForRowSet(sql, comicName);
        if (results.next()) {
            return mapRowToComic(results);
        } else {
            return null;
        }
    }

    @Override
    public Comic findByAuthor(String author){
        String sql = "";
        SqlRowSet results = jdbcTemplate.queryForRowSet(sql, author);
        if (results.next()) {
            return mapRowToComic(results);
        } else {
            return null;
        }
    }

    @Override
    public Comic findIdByComicName(String comicName){
        String sql = "";
        SqlRowSet results = jdbcTemplate.queryForRowSet(sql, comicName);
        if (results.next()) {
            return mapRowToComic(results);
        } else {
            return null;
        }
    }

    private Comic mapRowToComic(SqlRowSet rowSet) {
        Comic comic = new Comic();
        comic.setComicId(rowSet.getInt("comic_id"));
        comic.setAuthor(rowSet.getString("author"));
       comic.setComicName(rowSet.getString("comic_name"));
       comic.setReleaseDate((rowSet.getDate("release_date").toLocalDate()));
       comic.setCollectionId(rowSet.getInt("collection_id"));
       return comic;
    }

    @Override
    public Comic createComic(Comic comic) {
        String sql = "INSERT INTO comic (comic_name, author, release_date, collection_id) VALUES (?, ?, ?, ?) returning comic_id";
        int newId = jdbcTemplate.queryForObject(sql, int.class, comic.getComicName(), comic.getAuthor(), comic.getReleaseDate(), comic.getCollectionId());
        return getComicById(newId);
    }
}
