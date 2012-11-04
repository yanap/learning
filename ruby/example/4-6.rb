count = database_connector.get_int(<<"EOS" % author.id)
	SELECT COUNT(*)
	FROM book
	WHERE book.author_id = %d
EOS
