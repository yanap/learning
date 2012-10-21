hash1 = {"a" => 1, "b" => 2 }
hash2 = {"a" => 1, "b" => 2 } 
p hash1 == hash2 #=> true
p hash1 == { "b" => 2, "a" => 1 } #=> true 順序は関係ない
p hash1 == { "a" => 9, "b" => 2 } #=> true 値が違う
p hash1 == { "z" => 1, "b" => 2 } #=> false キーが違う
p hash1 == { "a" => 1, "b" => 2, "c" => 3 } #=> false: 余分な要素
