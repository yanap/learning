last_odd = nil
(1..10).each do |i|
	last_odd = i if i%2 != 0
end
p last_odd #=> 9