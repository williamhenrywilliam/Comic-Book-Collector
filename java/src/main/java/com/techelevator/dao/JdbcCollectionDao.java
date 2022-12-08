package com.techelevator.dao;

import com.techelevator.model.Collection;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Component
public class JdbcCollectionDao implements CollectionDao {

    private final JdbcTemplate jdbcTemplate;

    public JdbcCollectionDao(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Override
    public List<Collection> findAll() {
        List<Collection> collections = new ArrayList<>();
        String sql = "SELECT * FROM collection";

        SqlRowSet results = jdbcTemplate.queryForRowSet(sql);
        while (results.next()){
            Collection collection = mapRowToCollection(results);
            collections.add(collection);
        }
        return collections;
    }

    @Override
    public Collection getCollectionById(int collectionId) {
        String sql = "SELECT * FROM collection WHERE collection_id = ?";
        SqlRowSet results = jdbcTemplate.queryForRowSet(sql, collectionId);
        if (results.next()){
            return mapRowToCollection(results);
        } else{
            return null;
        }
    }

    @Override
    public Collection findByCollectionName(String collectionName) {
        return null;
    }

    @Override
    public Collection createCollection(Collection collection) {
        String sql = "INSERT INTO collection (collection_name) VALUES (?) returning collection_id";
        int newId = jdbcTemplate.queryForObject(sql, int.class, collection.getCollectionName());
        return getCollectionById(newId);
    }

    private Collection mapRowToCollection(SqlRowSet rs) {
        Collection collection = new Collection();
        collection.setCollectionId(rs.getInt("collection_id"));
        collection.setCollectionName(rs.getString("collection_name"));
        return collection;
    }
}
