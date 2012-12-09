array = [1, 2]
a, b, *c, d = *array, 3, 4, 5
p a # => 1
p b # => 2
p c # => [3, 4]
p d # => 5