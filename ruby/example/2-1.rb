cattle = "yahoo"
p container = [cattle, cattle] #=> ["yahoo", "yahoo"]
cattle[2] = 'p' # 文字列オブジェクト更新
p container #=> ["yapoo", "yapoo"]
