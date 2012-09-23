p Fixnum.class #=> Class クラスは、Classクラスのインスタンス
p Fixnum.object_id #=> 108610 もちろん、一意な番号を持つ
# 祖先クラスを問い合わせる
p Fixnum.ancestors #=> [Fixnum, Integer, Precision, Numeric, ....
# インスタンスメソッドの一覧
p Fixnum.instance_methods #=> [:to_s, :id2name
# インスタンスのクラスへの所属判定
p 1.kind_of? Fixnum #=> true
p "str".kind_of? Fixnum #=> false
p Fixnum.kind_of? Class #=> true
p Fixnum.kind_of? Object #=> true

