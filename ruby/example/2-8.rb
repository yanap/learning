#encoding: utf-8
a = ["a", "b"]
a[-3] #=> nil 範囲外のアクセスに対してはnilを返す
a[-3] = 1 #=> IndexError 例外発生

