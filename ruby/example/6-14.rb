

def method_with_side_effect
	puts "副作用が発生しました"
	return 1
end
# メソッドは呼ばれない
true || method_with_side_effect #=> true
# メソッドが呼ばれる
false || method_with_side_effect #=> 1
								 #=> 副作用が発生しました