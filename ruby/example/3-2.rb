# encoding: utf-8

0xDEADBEEF # 16�ʿ�ɽ�������� 
-0xCAFE    # ���16�ʿ�
0xDEAD_BEFF_CAFE_BABE # �礭��16�ʿ�
01755 # 0����Ϥޤ����8�ʿ�ɽ���Ȳ�ᤵ���
0b1010111 # 2�ʿ�ɽ��

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
