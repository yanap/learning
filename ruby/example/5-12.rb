# -*- coding: utf-8 -*-
File.open("05-012-datafile", "rb:UTF-16BE"){|f|
  p f.read.encoding #=> #<Encoding:UTF-16BE>
}
