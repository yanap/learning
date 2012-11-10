#encoding: utf-8
p "4-12"
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

# 位置による文字のアクセス
p story[0], story[1], story[2]
	#=> 83, 111, 108 (Ruby 1.8)
	#=> "S", "o", "l" (Ruby 1.9)
p story[187]
	#=> nil 範囲外
# 負の位置
p story[-1], story[-2], story[-3], story[-4]
	#=> 10, 46, 121, 100 (Ruby 1.8)
	#=> "\n", ".", "y", "d" (Ruby 1.9)

p story[8, 6] #=> "Grundy" 位置と長さによるアクセス
p story[8...14] #=> "Grundy" 範囲によるアクセス
p story["Monday"] #=> "Monday" 部分文字列によるアクセス
p story[/\w+sday/] #=> "Tuesday" 正規表現によるアクセス

# 4-13
p "4-13"
story["Solomon Grundy"] = "Hippopotamus"
print story

# 4-14
p "4-14"
story = story.gsub(/Solomon Grundy/, "Hippopotamus")
print story
#=> Hippopotamus,
#	Born on Monday,
# 	.....
#	This is the end
#	Of Hippopotamus. 

p story.gsub(/(\w+?)day/) { "#{$1}." }
