#encoding: utf-8

# すべてのオブジェクトで使えるようにKernelモジュールにメソッドを定義する

module Kernel
  def a_method
    "カーネルメソッド"
  end
end

a_method # => "カーネルメソッド"