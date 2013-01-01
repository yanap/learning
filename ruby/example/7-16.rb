require './7-15.rb'
counter = create_counter
counter.call #=> 2
counter.call #=> 3
counter2 = create_counter
counter2.call #=> 2
counter.call #=> 4
counter2.call #=> 3
