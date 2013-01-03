class Fixnum
	alias original_addition + # 元の定義を別のメソッドで退避する
	def + (rhs) # 再定義
		original_addition(rhs).succ
	end
end
p 1+1 #=> 3
p 5+2 #=> 8