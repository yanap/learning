def describe(name)
  name = name.dup
  puts "This is a #{name}." #=> This is a yahoo.
  name[2] = ?p
  puts "This is a #{name}." #=> This is a yapoo.
end
CATTLE = "yahoo"
decribe(CATTLE)
p CATTLE #=> "yahoo"

