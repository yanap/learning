array = ["a", "b", "c"]
array.each_with_index do |item, index|
	p [item, index]
end
	#=> ["a", 0]
	#=> ["b", 1]
	#=> ["c", 2]

