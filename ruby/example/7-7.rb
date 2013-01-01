def some_method(a)
	return a, 1, 2,3
end
a, b, *c = *some_method(0)
p a, b, *c
