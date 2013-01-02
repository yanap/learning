# encoding: utf-8
a = "str"
[1, 2, 3].each{|a| p a } # このaは、上のaとは別物
p a #=> "str"