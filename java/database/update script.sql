UPDATE public.users
	SET user_id=?, username=?, password_hash=?, role=?
	WHERE <condition>;


UPDATE public.comic
	SET comic_id=?, comic_name=?, author=?, release_date=?, collection_id=?
	WHERE <condition>;



UPDATE public.collection
	SET collection_id=?, collection_name=?
	WHERE <condition>;