def foo_bar_baz
	yield "foo"
	yield "bar"
	yield "baz"
end
foo_bar_baz do |item|
	puts item
end
# => foo
# bar
# baz