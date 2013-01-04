b = binding
while code = gets
	p eval(code, b)
end
