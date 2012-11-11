#encoding:utf-8

p "シンボル"

:"Anna Terras" # 空白を含むシンボル
:"#{$$}" # 式展開
:"\xE3\x81\x82" # バックスラッシュ記法
:'#{$$}' # 一重引用符では、式展開などは無効
:if # Ruby の識別子として妥当
:some_method_name # Ruby の識別子として妥当

str1 = "ruby"
str2 = "ruby"
p str1 == str2 #=> true
p str1.equal? str2 #=> false

symbol1 = :ruby
symbol2 = :ruby
p symbol1 == symbol2 #=> true
p symbol1.equal? symbol2 #=> true

# Railsにおける疑似キーワード引数の例
#Yapomb.find :select => "name", :conditions => ["argentaqua_state > ?", 90]

#Yapomb.find select: "name", conditions: ["argentaqua_state > ?", 90]

p "あいう".length

p "例　4-25"

str = "あいう"
p str[0], str[1], str[2] #=> 227, 129, 130

p "例　4-26"

str = "aβｃd"
puts str.upcase

# UTF-8 で「日本語」というバイト列
str = "\xe6\x97\xa5\xe6\x9c\xac\xe8\xaa\x9e"

$KCODE = 'UTF8'
puts str.inspect #=> "日本語"
$KCODE = 'SJIS'
puts str.inspect 
