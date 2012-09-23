p "str" == "str" #=> true 文字列の同値性比較
p 1 == 1.0 #=> true 数値の同値性比較
p 1.14 + 2 #=> 3.14 数値の加算
p "str" + "ing" #=> "string" 文字列結合
p 1 << 2 #=> 4 ビットシフト
p ["a", "b"] << "c" #=>["a", "b", "c"] 要素挿入
$stdout << "hoge" #=> hoge
