# encoding: utf-8

class A
	def some_method(a, b)
		if a == 1
			p b
		end
	end

	a = A.new

a.some_method(1, "str")
a::some_method(1,"str")
a.some_method 1, "str"
# 曖昧な例
p '---'
p a.some_method 1, "str"
end

#escaped_str = str.gsub(/&/, '&amp;').gsub(/</, '&lt;').gsub(/>/, '&gt;')

class Laputa
	def hover
		vibrate # (1) レシーバ省略
	end
	def vibrate
		p "vibrate"
		# 何かの処理
		p self
	end
	p self
end
takalamakhan = Laputa.new # Laputa クラスのインスタンスを作成
takalamakhan.hover # 内部でtakalamakhan.vibrate が呼ばれる

p self

vibrate = 1 # ローカル変数初期化
vibrate # ローカル変数参照
self.vibrate # メソッド呼び出し

