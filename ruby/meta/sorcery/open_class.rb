#encoding: utf-8

# 既存のクラスを拡張する

class String
  def my_string_method
    "私のメソッド"
  end
end

"abc".my_string_method # =>　'私のメソッド'

p "abc".my_string_method