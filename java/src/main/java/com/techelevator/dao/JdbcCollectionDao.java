package com.techelevator.dao;

import com.techelevator.model.Collection;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;

import java.util.List;

public class JdbcCollectionDao implements CollectionDao {

    private final JdbcTemplate jdbcTemplate;

    public JdbcCollectionDao(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Override
    public List<Collection> findAll() {
        return null;
    }

    @Override
    public Collection getCollectionById(int collectionId) {
        return null;
    }

    @Override
    public Collection findByUserName(String userName) {
        return null;
    }

    @Override
    public Collection findByComicName(String comicName) {
        return null;
    }

    /*private Collection mapRowToCollection(SqlRowSet rs) {
        Collection collection = new Collection();
        Collection.setCollectionId(rs.getInt("collection_id"));
        Collection.setUserName(rs.getString("username"));
        Collection.setComic_name(rs.getString("comic_name"));
        Collection.setCollectionName(rs.getNString("collection_name"));
        return collection;
    } */
}
