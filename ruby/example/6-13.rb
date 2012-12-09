p !0 # => false 本来0は真
class Integer
	def !@; return true end # !を再定義
end
p !0 #=> true
p !!0 #=> false
if 0 then # 依然として0は真
	puts '0 is truth' # 実行される
end