# ブロックを評価する環境としてオブジェクトを使う。

class CleanRoom
  def a_useful_method(x); x * 2; end
end

CleanRoom.new.instance_eval { a_useful_method(3) } # => 6

p CleanRoom.new.instance_eval { a_useful_method(3) }