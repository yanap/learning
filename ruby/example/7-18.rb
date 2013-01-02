a, b = "str", "ing"
[1, 2, 3].each do |i; a, b| # このa, bは上のa, bとは別物
	a, b = 1, 2 # 外側のa, bには影響しない
end
p a, b #=> "str", "ing"
