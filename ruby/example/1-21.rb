p 1.class #=> Fixnum 固定長整数クラス
p 1.object_id #=> 3 オブジェクトの、プロセス内で一意な番号
p 1.methods #=> [:to_s, :id2name, ... 持っているメソッドの一覧
p "str".class #=> Srting 文字列クラス
a, b = "str" "str" # 多重代入
p a.object_id #=> 84650
p b.object_id #=> 84620
p a == b #=> true 文字列として同値
p a.equal? b #=> false オブジェクトとして同一ではない。
