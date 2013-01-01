def some_method(a, b, *c)
	p [a, b, c]
end
# 余分な引数の3, 4, 5は仮引数cに割り当てられる
some_method(1, 2, 3, 4, 5) #=> [1, [2, 3, 4], 5]