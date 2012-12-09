#rubyには++でインクリメントする文法がないからうんぬん

0.upto(9){|i| puts i }
str = "Glubbdubdrib"
str.each_byte do |byte|
	printf "%x\n", byte
end