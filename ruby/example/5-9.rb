#encoding:utf-8
File.open("05-009-redirection-result", 'W'){|f|
  $stdout = f # 標準出力を変更
  puts "Welcome to Glubbdubdrid" # ファイルに出力される
  $stdout = STDOUT # $stdout の初期値
}
