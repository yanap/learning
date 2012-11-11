# -*- coding: utf-8 -*-
sjis = "ラグナグ".encode("Shift_JIS")
utf = "voyage to ".force_encoding("UTF-8")
p utf + sjis
