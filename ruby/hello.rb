#!/usr/bin/ruby
puts("Hello, World!");
# メソッドの呼び出しは括弧を省略できる
puts "Hello, World!";

# 改行
hello = "Hello"; # セミコロンによる式区切り
message = hello + "world!"; # 改行による式区切り
puts message

greeting = "Hello, "; message = greeting + "world!"

# white space
puts      (           # 括弧が開いたままなので次の行に続く
     "Hello World"      )

# 好きなだけ空行を挿入できる

# 行末にバックスラッシュを書く次の行に続く
puts   \
     "Hello, " + # 2項演算子の右辺がないので次の行に行く
   "World!"

#input, output
name = gets 					#標準入力から１行入力
print "Hello, #{name}\n" 		#文字列中の式展開
printf "Hello, %s\n", name 		#C言語風の文字列フォーマット出力
message = "Hello, %s" % name 	#文字列フォーマットの別の書き方
puts message					#putsメソッドは最後に改行を出力する
$stderr.puts message 			#標準エラー出力へ
$stdout.puts message 			#標準出力を明示しても良い
$stdout.class #=> IO			これらはIOクラスのインスタンス
