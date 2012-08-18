#!/usr/bin/ruby
# encoding: utf-8
# 関数的メソッド
def odd?(n)
	# 値による多岐分岐
	case n % 2 #剰余
	when 0 then false
	when 1 then true
	else raise "数学的にありえない"		# 例外送出
	end
end

while num = gets 						# getsがnilを返すまで繰り返す
	# 正規表現による文字列のチェック
	unless /\A-?\d+\Z/ =~ num			# 「unless」は 「if not」と同義
		$stderr.puts "整数を入力してください"
		next							# 今回の繰り返しを終了し、次へ
	end
	num = num.to_i						# 型変換
	if odd?(num)
		puts "#{num}は奇数"
	else
		puts "#{num}は偶数"
	end
end
