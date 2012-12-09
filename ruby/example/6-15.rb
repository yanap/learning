def generate_default_value
	p 'default value generated'
	return 'default value'
end
def some_method(param = nil)
	param ||= generate_default_value
	# .... paramを使って何かする
end

some_method(nil) #=> 'default_value_genetated'
some_method(false) #=> 'default_value_generated'
some_method(true) #=> 出力なし
some_method(0) # => 出力なし
some_method() # => 'default_value_generated' 引数省略
