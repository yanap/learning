class Duration
	atttibute_names = %w[ days hours minutes seconds ]
	p atttibute_names #=> ["days", "hours", "minutes", "seconds"]
	atttibute_names #=> ["days", "hours", "minutes", "seconds"]
	atttibute_names.each do |name|
		attr_accessor name
	end
end
p atttibute_names #=> NameError