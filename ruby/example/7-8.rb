def some_method(a)
	[a, 1, 2, 3] # 括らずにa, 1, 2, 3と書くだけではエラー
end
a = some_method(5)
p a
