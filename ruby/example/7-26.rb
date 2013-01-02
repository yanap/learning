def foo_bar_baz3
	# ブロックを与えられてないときに、enum_forでEnumeratorを生成して返す
	return enum_for(:foo_bar_baz3) unless block_given?
	%w[ foo bar baz ].each do |item|
		yield item
	end
end
