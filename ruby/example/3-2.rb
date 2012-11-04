# encoding: utf-8

0xDEADBEEF # 16進数表記の整数 
-0xCAFE    # 負の16進数
0xDEAD_BEFF_CAFE_BABE # 大きな16進数
01755 # 0から始まる数は8進数表記と解釈される
0b1010111 # 2進数表記

hash = {
	"0xDEADBEEF" => 0xDEADBEEF,
	"-0xCAFE" => -0xCAFE,
	"0xDEAD_BEFF_CAFE_BABE" => 0xDEAD_BEFF_CAFE_BABE,
	"01755" => 01755,
	"0b1010111" => 0b1010111
}

hash.each do |key, item|
	p "#{key} : #{item}"
end
