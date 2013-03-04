(1..100).each do |c| s = Math.sqrt(c); ff = (2..s).any? {|i| c % i == 0}; if ff then p "#{c}is composite number" else p "#{c} is prime" end end
