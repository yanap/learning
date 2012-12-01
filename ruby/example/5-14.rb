#encoding:utf-8
File.open("05-014-internal_encoding-result", "w:UTF-32BE:UTF-8"){|f|
  f.puts("バルニバービ") # UTF-32に変換された文字列が書き込まれる
}

