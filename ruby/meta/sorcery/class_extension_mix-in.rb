#encoding: utf-8

# モジュールのincluderをフックメソッドを使って拡張する

module M
  def self.include(base)
    base.extend(ClassMethods)
  end

  module ClassMethods
    def my_method
      'クラスメソッド'
    end
  end
end

class C
  include M
end