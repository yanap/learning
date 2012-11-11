#encoding: utf-8
p "フォーマット"

p sprintf("%04d", 3);

p sprintf("%08.4f", Math::PI*10)

p sprintf("hex=%X, oct=%o", 10, 10)

# 4-21
p "4-21"
p "%04d" %  3
p "%08.4f" % (Math::PI*10)
p "hex=%X, oct=%o" % [10, 10]

# %[引数指定 $][フラグ][幅][.精度]指示子

