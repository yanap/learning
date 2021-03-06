# encoding: utf-8
a = 1
b = "str"
# 配列リテラル
c = [a, b, 3, "文字列"] #=> [1, "str", 3, "文字列"]
# ネストもできる
d = [a, c, [1, 2, 3]] #=> [1, [1, "str", 3, "文字列"], [1, 2, 3]]

#2-3
p c[0] #=> 1
p c[1] #=> "str"
p c[2] #=> 3
p c[3] #=> "文字列"
p c[4] #=> nil
p d[2] #=> [1, 2, 3]
p "----------------------"

#2-4
p c[-1] #=> "文字列" c[c.length-1]と等価
p c[-2] #=> 3 c[c.length-2]と等価 
p c[-5] #=> nil 最初の要素よりも前。範囲外。
p "----------------------"

#2-5
p c[1, 2] #=> ["str", 3]
p c[1, 3] #=> ["str", 3, "文字列"]
p c[1, 4] #=> ["str", 3, "文字列"]
p c[-2, 2] #=> [3, "文字列"]
p c[4, 2] #=> []
