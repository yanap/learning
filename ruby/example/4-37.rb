p sjis = "\xc2\xa1".force_encoding("Shift_JIS")
p enc = "\xc2\xa1".force_encoding("EUC-JP")
p sjis.bytes.to_a
p enc.bytes.to_a
p sjis == enc
