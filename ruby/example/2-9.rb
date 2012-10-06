#encoding: utf-8
array1 = [1, 2, "str"]
array2 = [1, 2, "str"]
array1 == array2 #=> true
array1 == ["str", 1, 2] #=> false:　順序が違う
array1 == [1, 2, "str", "extra"] #=> false: 余分な要素

