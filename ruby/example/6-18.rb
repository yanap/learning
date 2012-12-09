value = "3"
case value
when '0'         then '0'
when /\A\d\Z/    then '1けた'
when /\A\d{2}\Z/ then '2けた'
else                  'それ以外'
end

# おまけ
if 0 === value then
	'0'
elsif (1..9) === value then
	'1けた'
elsif(10..99) === value then
	'2けた'
end

if number.prime?		 then process_prime(number)
	elsif number.fermat? then process_carmichel(number)
	elsif number.odd?	 then process_odd_composite(number)
	else				 then process_even_composite(numbe)
end

while condition do
	do_something
end

def more?
	gets.chomp != "ok"
end
begin
	$stdout.print "満足したら'ok'と入力してください"
end while more?

do_something while condition

until contition
	do_something
end

for i in [1, 2, 3] do
	puts i
end

[1, 2, 3].each do |i|
	puts i
end

until condition
	do_something
end