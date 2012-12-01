#encoding: utf-8
File.open('./example/time.log', 'a') {|f|
	f.puts Time.now
}
# r :  read only
# w : write only
# r+ : both
# w+ : both
# a : append only
# a+ : both
# b : binary only

File.open("./example/05-004-datafile", File::WRONLY|File::CREAT) {|f| 
	#do something
}

# RONLY : read only
# WONLY : write only
# RDWR : both
# APPEND
# CREATE : file create
# EXCL : 排他的新規作成,Exclusive, ファイルを新規作成することを保証する。CREATEと組み合わせて使用する。
# もし同名のファイルが既に存在すればopen失敗する。 
# NONBLOCK : 非ブロックモード, すぐに読み書きできない場合にもメソッド呼び出しをブロックさせずに制御を返す
# TRUNK : 内容を切り捨て, ファイルを開いたときにファイルを長さ0に切り詰める。既存の内容は破棄される。
# NOCTTY : 端末に割り当てない, 端末ファイルを開くとき、現在のプロセスが制御端末を持っていなくても開いた
# ファイルを制御端末として割り当てない
# BINARY : 改行変更抑制, MS-DOS/Windows環境で改行を"\r\n"と変換することを抑制する
# SYNC : 同期モード , 書き込み都度同期する。書き込みメソッドは書き込みがハードウェアレベルで完了するまで生業を返さない。



 
