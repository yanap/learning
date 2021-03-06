#encoding: utf-8
a = [1, 2]
a[0] = 3; p a #=> [3, 2]
a[4] = "4";  p a #=> [3, 2, nil, nil, "4"]
a[0, 3] = 'a', 'b', 'c';  p a  #=> ["a", "b", "c", nil, "4"] 
a[0, 3] = 'a', 'b', 'c', 'd';  p a  #=> ["a", "b", "c", "d", nil, "4"]
a[1..2] = 1, 2;  p a #=> ["a", 1, 2, "d", nil, "4"]
a[0, 2] = "?";  p a #=> #=> ["?", 2, "d", nil, "4"]
a[0..2] = "A";  p a  #=> ["A", nil, "4"]
a[-1] = "Z";  p a #=> ["A", nil, "Z"]
