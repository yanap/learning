heredoc = " SELECT COUNT(*)\n FROM book\n WHERE book.author_id = %d\n"
count = database_connector.get_int(heredoc % author.id)

