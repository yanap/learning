100.times do |i|
  s = 'Fizz' if i%3<1
  p i%5<1 ? "#{s}Buzz" : s||i
end
