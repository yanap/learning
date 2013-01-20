# クラス定義内でクラスメソッドを使う。

class C; end

class << C
  def my_macro(arg)
    "my_macro(#{arg}) called"
  end
end

class C
  my_macro :x # => "my_macro(x) called"
  p my_macro :x
end