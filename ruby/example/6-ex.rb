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

for name, num in [ ['Jan', 1], ['Feb', 2] ]
	puts "#{name}は#{num}月"
end

loop do
	puts "Houyhnhnm"
end

3.times{ puts "Yahoo" }

3.times{|i| puts i }

1.upto(3) do |i| puts i end

loop do
	puts "Houyhnhnm"
	break if /^Houyhnhnm/ =~ gets
end

3.times do
	3.times do
		break
	end
	# ←　ここに脱出する
end

a = loop { break 1 }
p a # => 1

1.upto(3) do |i|
	next if i == 2
	puts if
end
	# => 1
	# 3

1.upto(3) do |i|
	puts i
	redo if i == 2
end

begin
	do_something
rescue ArgumentError => error then
	puts error.message
rescue TypeError

rescue => another_error
	puts another_error.message
else
	puts "例外なし"
ensure
	puts "ensure 節"
end

begin
	process(1); process(2); process(3)
ensure
	puts Time.now
end

do_something rescue error_handling

raise ArgumentError, 'message'

error = ArgumentError.new('message')
raise error

raise ArgumentError
raise 'message'
raise

catch(:exit) {
	loop do
		loop do
			throw :exit
		end
	end
}


}