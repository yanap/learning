#encoding: utf-8

# オブジェクトのコンテキストにある情報にアクセスするためにブロックを実行する

class C
  def initialize
    @x = "プライベートなインスタンス変数"
  end
end

obj = C.new
obj.instance_eval { @x } # => "プライベートなインスタンス変数"
p obj.instance_eval { @x }