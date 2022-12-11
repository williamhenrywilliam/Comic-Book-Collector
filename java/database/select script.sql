SELECT user_id, username, password_hash, role
	FROM public.users;

SELECT comic_id, comic_name, author, release_date, collection_id, comic_image
	FROM public.comic;


SELECT collection_id, collection_name
	FROM public.collection;