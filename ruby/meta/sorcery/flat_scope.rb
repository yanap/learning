# クロージャを使って、２つのスコープで変数を共有する。

class C
  def an_attribute
    @attr
  end
end

obj = C.new
a_variable = 100

# フラットスコープ:
obj.instance_eval do
  @attr = a_variable
end

obj.an_attribute # => 100
p obj.an_attribute