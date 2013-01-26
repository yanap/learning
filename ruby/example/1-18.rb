(1..100).each do |i|
  case i % 15
  when 0 then  p "FizzBuzz"
  when 3, 6, 9, 12 then p "Fizz"
  when 5, 10 then p "Buzz"
  else p i
  end
end