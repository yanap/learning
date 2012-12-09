def next_of(origin)
	value = origin + 1
	p value
end
def prev_of(origin)
	value = origin - 1
	p value
end

next_of(2) # => 3
next_of(2) # => 3
prev_of(2) # => 1
p value # => NameError

p undefined_variable # => NameError
