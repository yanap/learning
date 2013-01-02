def foo_bar_baz2
	%w[ foo bar baz ].each do |item|
		yield item
	end
end