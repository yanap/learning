# 実行時に呼び出すメソッドを決める

method_to_call = :reverse
obj = "abc"

obj.send(method_to_call) # => "cba"