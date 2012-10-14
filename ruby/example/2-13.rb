acids = ["Adenin", "Thymine", "Guanine", "Cytosine"]
signs = acids.map{|acid| acid[0,1] }
p signs #=> ["A", "T", "G", "C"]
