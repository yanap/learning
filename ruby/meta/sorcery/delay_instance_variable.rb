#encoding: utf-8

# 最初にアクセスされるまでインスタンス変数を初期化しない

class C
  def attribute
    @attribute = @attribute || "なんらかの値"
  end
end

obj = C.new
obj.attribute # => "なんらかの値"
p obj.attribute