# 当てはまるメソッドのないメッセージに応答する

class C
  def method_missing(name, *args)
    name.to_s.reverse
  end
end

obj = C.new
obj.my_ghost_method # => "dohtem_tsohg_ym"
p obj.my_ghost_method