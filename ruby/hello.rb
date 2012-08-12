#!/usr/bin/ruby
puts("Hello, World!");
# メソッドの呼び出しは括弧を省略できる
puts "Hello, World!";

# 改行
hello = "Hello"; # セミコロンによる式区切り
message = hello + "world!"; # 改行による式区切り
puts message

# white space
puts      (           # 括弧が開いたままなので次の行に続く
     "Hello World"      )

# 好きなだけ空行を挿入できる

# 行末にバックスラッシュを書く次の行に続く
puts   \
     "Hello, " + # 2項演算子の右辺がないので次の行に行く
   "World!"
