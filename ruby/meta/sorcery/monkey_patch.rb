# 既存のクラスの振る舞いを変更する。

"abc.reverse" => "cha"

class String
  def reverse
    "override"
  end
end

"abc".reverse # => "override"
