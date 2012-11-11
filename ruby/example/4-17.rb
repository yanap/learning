#encoding: utf-8

story = <<EOS
Solomon Grundy,
Born on Monday,
Christend on Tuesday,
Married on Wendnesday,
Took ill onThursday,
Worse on Friday,
Died on Saturday,
Buried on Sunday,
This is the end
of Solomon Grundy,
EOS

p "分解"
p "a,bb, ccc, dddd".split(/,\s?/)

p "string".split(//)

p "比較"
p "abc" == "abc" #=> true: 同値
p "abc" < "abd"  #=> true: 小なり
p "abc" < "acc"  #=> true: 小なり
p "a" < "aa" #=> true: 小なり

p "add" <=> "acc" #=> 宇宙船演算子

# 4-18
p "4-18"
p "string".reverse #=> "gnirts"
p "\n \rstring ".strip #=> "string"
p "string".length #=> 6

# 4-19
p "4-19"
p "イテレータ"
"str".each_byte do |byte|
	p byte #=> 115, 116, 114
end

story.each_line do |line|
	print line
end
