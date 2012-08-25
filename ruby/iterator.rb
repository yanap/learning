#!/usr/bin/ruby

(1..100).each do |i|
	case i % 15 			
	when 0 				then puts "FizzBuzz"
	when 3, 6, 9, 12 	then puts "Fizz"
	when 5, 10 			then puts "Buzz"
	else 					 puts i
	end
end

array = ["Bear", "Benford", "Egan"] # 配列リテラル
p array.map{|name| "G. #{name}"}    #=>["G. Bear", "G. Benford", "G. Egan"]
# ハッシュリテラル
hash = {
	"Baxter" => "Stephen", "Stross" => "Charles", "Reynolds" => "Alastair"
}
# 項目ごとの繰り返し
hash.each do |key, value|
	puts "#{value} #{key}"
end

