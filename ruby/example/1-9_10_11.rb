#存在しないクラス NonexistentClass から派生しようする
class Foo < NonexistClass
  # ....
end

# ユーザの入力が1ならBarから、そうでなければBazから派生する
class Foo < (user_input == "1" ? Bar : Baz)
  # .....
end

require 'rational' # 拡張子を指定しないと自動的に補完します
load '/path/to/somewhere/config.rb' # パスによって指定しています
require 'user-library.rb' # 拡張子を指定することもできます
