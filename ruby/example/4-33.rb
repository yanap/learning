# -*- coding: utf-8 -*-
utf = "日本"
p utf.encoding
sjis = utf.encode("Shift_JIS")
p sjis.encoding

p '4-34'
utf = "\x83\x89\x83\x4f\x83\x69\x83\x4f"
sjis = "\x83\x89\x83\x4f\x83\x69\x83\x4f".force_encoding("Shift_JIS")
p utf.encoding
p sjis.encoding

p '4-35'
sjis = "ラグナグ".encode("Shift_JIS")
euc = "への旅".encode("EUC-JP")
sjis + euc 



