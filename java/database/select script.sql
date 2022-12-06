SELECT user_id, username, password_hash, role
	FROM public.users;

SELECT comic_id, comic_name, author, release_date
	FROM public.comic;


SELECT collection_id, collection_name, username, comic_name
	FROM public.collection;