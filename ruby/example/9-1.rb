require 'open-uri'
open("http://www.oreilly.co.jp") {|connection|
	connection.each_line do |line|
		print line
	end
}
