#encoding: utf-8
File.open("05-002-datafile", "r+b") {|f|
	print "#{f.pos}:"	# バイト位置を出力(0バイト目)
	print f.gets		# １行取得し、出力
	print "#{f.pos}: "	# (67バイト目)
	puts bytes = f.read(3) # ３バイト取得し、出力
	print "#{f.pos}:\n" # (70バイト目)
	f.pos -= 3 # ３バイト前へ移動
	print "#{f.pos}:\n" #(67バイト目)
	f.write bytes # 先ほど取得した3バイトを書き込み
	print "#{f.pos}:" # (70バイト目)
	f.pos = 0 # ファイル先頭へ
	print f.gets # 1行取得し、出力
	puts "#{f.pos}:" # (67バイト目)
	f.seek(-1, File::SEEK_END) # ファイル末尾の1バイト前へ移動
	print "#{f.pos}:" # (319バイト目)
	puts f.getc # 最後の1バイトを取得。位置はファイル末尾へ
	print "#{f.pos}:" # (320バイト目)
	p f.getc #=> nil もう読み取るバイトが存在しない
	print "#{f.pos}: " #(320バイト目)
	p f.getc #=> nil もう読み取るバイトが存在しない
	print "#{f.pos}: " #(320バイト目)
	# readcharは、読み取るバイトが存在しないときに例外を発生することを除きgetcと同じ
	puts f.readchar #=> EOFError
}
	

