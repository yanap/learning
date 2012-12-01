#encoding:utf-8
File.open("05-012-datafile", "rb:UTF-16BE:UTF-8"){|f|
  p f.read.encoding #=> #<Encoding:UTF-8>
}
