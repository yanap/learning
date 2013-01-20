#encoding: utf-8

# オブジェクトの特異クラスにモジュールをインクルードして、特異メソッドを定義する。

obj = Object.new

module M
  def my_method
    '特異メソッド'
  end
end

class << obj
  include M
end

obj.my_method # => "特異メソッド"