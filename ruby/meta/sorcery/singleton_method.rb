# 特定のオブジェクトにメソッドを定義する

obj = "abc"

class << obj
  def my_singleton_method
    "x"
  end
end

obj.my_singleton_method # => "x"
p obj.my_singleton_method