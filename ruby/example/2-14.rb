# encoding: utf-8 
acids = ["Adenin", "Thymine", "Guanine", "Cytosine"]
# 単純なmap
acids.map{|a| a.downcase} #=> ["adenine", "thymine", "guanine", "cytosine"]
# 省略バージョン
acids.map(&:downcase) #=> ["adenine", "thymine", "guanine", "cytosine"]

