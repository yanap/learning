# 同じフラットスコープの複数のコンテキストで変数を共有する

lambda {
  shared = 10

  self.class.class_eval do
    define_method :counter do
      shared
    end

    define_method :down do
      shared -= 1
    end
  end
}.call

counter # => 10
3.times { down }
counter # => 7