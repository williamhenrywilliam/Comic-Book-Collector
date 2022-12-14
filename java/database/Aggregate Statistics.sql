--Join Statement
/*
SELECT count(comic.comic_id), count(collection.collection_id)
FROM comic
INNER JOIN collection ON collection.collection_id = comic.comic_id
GROUP BY comic.collection_id
ORDER BY comic.collection_id DESC;

SELECT collection.collection_id, users.user_id
FROM users
WHERE collection.collection_id = ?
INNER JOIN collection ON collection.collection_id = users.user_id
ORDER BY collection.collection_id DESC;

SELECT collection.collection_name, users.username
FROM collection
WHERE collection.collection_id = ?
INNER JOIN users ON users.username = collection.collection_name
ORDER BY collection.collection_id DESC;
*/

SELECT count(DISTINCT comic.collection_id), count(comic.comic_id), count(DISTINCT author)
FROM comic
INNER JOIN collection ON collection.collection_id = comic.collection_id

--WHERE collection.collection_id = 1


