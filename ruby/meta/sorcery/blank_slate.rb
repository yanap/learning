#encoding: utf-8

# オブジェクトのメソッドを削除して、すべてゴーストメソッドにする
class C
  def method_missing(name, *args)
    "ゴーストメソッド"
  end
end

obj = C.new
p obj.to_s

class C
  instance_methods.each do |m|
    undef_method m unless m.to_s =~ /method_missing|respond.to?|^__/
  end
end

p obj.to_s