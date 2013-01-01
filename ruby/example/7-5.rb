def sum(x, y)
	x + y
end
def diff x, y # 括弧を省略するスタイル
	x - y
end
def prod(x, y) x * y end # １行にまとめるスタイル
def quo x, y; x / y end # 括弧を省略して一行にまとめるスタイル

sum(1, 2) #=> 2
diff(1, 2) #=> -1
prod(1, 2) #=> 2
quo(1, 2) #=> 0
