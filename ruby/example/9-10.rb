require 'continuation' if RUBY_VERSION >= '1.9'
1.upto(10) do |i|
	if i == 3
		$cont = callcc{|continuation|
			continuation
		}
	end
	print i, ' '
end
$cont.call(nil) if $cont
