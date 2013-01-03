class Animal; end
class Yahoo < Animal; end
class Yahoo; end # 再オープン
p Yahoo.superclass #=> Animal