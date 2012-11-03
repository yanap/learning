class Foo
	def each
	# any
	end
	def map
	result = []
	self.each {|item| result << yield(item)}
	end
end
