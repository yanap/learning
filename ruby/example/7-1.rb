# encoding: utf-8

class A
	def some_method(a, b)
		if a == 1
			p b
		end
	end

	a = A.new

a.some_method(1, "str")
a::some_method(1,"str")
a.some_method 1, "str"
# 曖昧な例
p '---'
p a.some_method 1, "str"
end

escaped_str = str.gsub(/&/, '&amp;').gsub(/</, '&lt;').gsub(/>/, '&gt;')

