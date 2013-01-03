class String # 文字列クラスの定義を再会する
	# カエサル暗号を施すメソッドを追加する
	def caesar; tr 'a-zA-Z', 'n-za-mN-ZA-M' end
end
puts "Learning Ruby".caesar #=> Yrneavat Ehol