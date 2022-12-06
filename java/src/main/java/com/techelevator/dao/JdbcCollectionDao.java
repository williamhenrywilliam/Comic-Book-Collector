package com.techelevator.dao;

import com.techelevator.model.Collection;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;

import java.util.ArrayList;
import java.util.List;

public class JdbcCollectionDao implements CollectionDao {

    private final JdbcTemplate jdbcTemplate;

    public JdbcCollectionDao(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Override
    public List<Collection> findAll() {
        List<Collection> collections = new ArrayList<>();
        String sql = "SELECT collection_id, collection_name FROM collection;";

        SqlRowSet results = jdbcTemplate.queryForRowSet(sql);
        while (results.next()){
            Collection collection = mapRowToCollection(results);
            collections.add(collection);
        }
        return collections;
    }

    @Override
    public Collection getCollectionById(int collectionId) {
        String sql = "SELECT collection_id, collection_name FROM collection WHERE user_id = ?;";
        SqlRowSet results = jdbcTemplate.queryForRowSet(sql);
        if (results.next()){
            return mapRowToCollection(results);
        } else{
            return null;
        }
    }

    @Override
    public Collection findByUserName(String userName) {
        return null;
    }

    @Override
    public Collection findByComicName(String comicName) {
        return null;
    }

    @Override
    public Collection findByCollectionName(String collection_Name) {
        return null;
    }

    private Collection mapRowToCollection(SqlRowSet rs) {
        Collection collection = new Collection();
        collection.setCollectionId(rs.getInt("collection_id"));
        collection.setUserName(rs.getString("username"));
        collection.setComic_name(rs.getString("comic_name"));
        collection.setCollectionName(rs.getNString("collection_name"));
        return collection;
    }
}
