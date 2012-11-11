#encoding: utf-8
regexp = /(.)/s # SJISモードの正規表現オブジェクト
str = "\202\240" # Shift_JISの「あ」
regexp =~ str
p $1 #=> "\202\240" # *

regexp = /(.)/n # バイト列モードの正規表現オブジェクト
regexp =~ str
p $1 #=> "\202"


p '4-29'
"あいうえお".scan(/./u) do |c|
	puts c
end

p '4-30'
sjis_luggnagg = "\203\211\203\117\203\151\203\117"
euc_luggnagg = "\245\351\245\260\245\312\245\260"
sjis_luggnagg = <=> euc_luggnagg

p '4-31'

"あいう".encoding
"あいう".length
"あいう".bytesize

# -*- coding: utf-8 -*-

# vim:fileencoding=UTF-8



