#encoding: utf-8

# 実行時にメソッドを定義する

class C
end

C.class_eval do
  define_method :my_method do
    "動的メソッド"
  end
end

obj = C.new
obj.my_method # => "動的メソッド"