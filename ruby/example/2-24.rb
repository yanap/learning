book_to_author = {
	"ruby in nutshell" => "flanagan",
	"programming ruby" => "thomas",
	"awdwr" => "thomas",
}
p book_to_author.map{|book, author|
	"#{book} by #{author}"
}
#=> ["Ruby in Nutshell by Flanagan", "Programming Ruby by Thomas",....
