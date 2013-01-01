def some_method(a, *b, c)
	p [a, b, c]
end
some_method(1, 2, 3, 4, 5) #=>  [1, [2, 3, 4], 5]