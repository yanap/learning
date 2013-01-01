# encoding: utf-8
def fact(n)
	return 1 if n == 0 # 0の場合は打ち切って1を返す。
	product = 1
	(1 .. n).each do |i|
		product *= i
	end
	return product
end

var  "0: " + fact(0)
p "3: " + fact(3)
