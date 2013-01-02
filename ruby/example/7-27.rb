def my_map
	[yield(1), yield(2), yield(3)]
end
p my_map {|i| i+1} #=> [2, 3, 4]