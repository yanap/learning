# 定数をモジュール内に定義して、名前の衝突を回避する

module MyNameSpace
  class Array
    def to_s
      "my class"
    end
  end
end

Array.new # => []
MyNameSpace::Array.new # => my class