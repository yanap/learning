book_to_author = {
	"ruby in nutshell" => "flanagan",
	"programming ruby" => "thomas",
	"awdwr" => "thomas",
}

book_to_author.each do |book, author|
  puts "#{book} by #{author}"
end
