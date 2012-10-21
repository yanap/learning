user_mapping = { "kayo" => nil }
p user_mapping.key? "kayo" #true
p user_mapping.key? "tetsu" #false
p user_mapping.fetch("kayo") #=> nil
p user_mapping.fetch("tetsu") #=> key not found (IndexError)
