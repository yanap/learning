if something?
	database_connector.search <<- 'SQL'
		SELECT * 
		FROM book
		WHERE expired_at <= CURRENT_DATE
	SQL
end
