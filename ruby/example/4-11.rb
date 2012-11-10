#encoding: utf-8
str = '<a href="/index.html">top</a>'
if /<a href="(.*?)"[>]/ =~ str
	puts $1 + "へのリンクの発見"
end

#oniguruma

/<a href="(?<url>.*?)"[>]/ =~ str
p url 
