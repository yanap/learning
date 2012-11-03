require 'enumerator'
book_to_author = {
	"ruby in nutshell" => "flanagan",
	"programming ruby" => "thomas",
	"awdwr" => "thomas",
}
book_to_author.enum_for(:each_with_index).map{|(book, author), index|
	p "#{index+1}. #{book}"
}
#=> ["1. Ruby in Nutshell", "2. Programming Ruby", ] ....
