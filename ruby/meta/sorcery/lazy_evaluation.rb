# Procやlambdaにコード片とコンテキストを保管して、あとで評価する。

class C
  def store(&block)
    @my_code_capsule = block
  end

  def excute
    @my_code_capsule.call
  end
end

obj = C.new
obj.store { $X = 1 }
$X = 0

obj.excute
$X # => 1