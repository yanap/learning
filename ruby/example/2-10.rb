#encoding: utf-8
array = ["a", "b", "c"]
p array.length #=> 3
p array.size #=> 3 (lengthの同義語)
p array *= 2 #=> ["a", "b", "c", "a", "b", "c"]

p array.include? "c" #=> true 特定の値を含むかどうか
p array.sort #=> ["a", "a", "b", "b", "c", "c"] 新しい配列を生成して返す
p array #=> ["a", "b", "c", "a", "b", "c"] 元の配列は変化していない
p array.uniq #=> ["a", "b", "c"]
array.uniq! #元の配列自体を更新する
p array #=> ["a", "b", "c"]
