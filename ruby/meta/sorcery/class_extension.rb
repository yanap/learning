#encoding: utf-8


# クラスの特異クラスにモジュールをインクルードして、クラスメソッドを定義する(オブジェクト拡張の特別な形)

class C; end

module M
  def my_method
    'クラスメソッド'
  end
end

class << C
  include M
end

p C.my_method