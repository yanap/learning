#encoding: utf-8
File.open("05-002-datafile") {|f| #ファイルを開く
	contents = f.read #ファイルの中身を全て読み込む
	print contents
} #ファイルを閉じる

