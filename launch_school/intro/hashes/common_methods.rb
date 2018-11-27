name_and_age = { "Bob" => 42, "Steve" => 31, "Joe" => 19}
p name_and_age.has_key?("Bob")
p name_and_age.has_key?("Larry")


# select: pass a block and return any key value pairs that return true
p name_and_age.select { |k, v| (k == "Steve") || (v % 2 == 1)}


# fetch: pass a key and return its value, can specify a default to return if it doesnt exist
p name_and_age.fetch("Steve", default="HI")


# to_a convert to array. Does not return a new one though
p name_and_age.to_a.class
p name_and_age.class


# keys and values
p name_and_age.keys
p name_and_age.values

puts "\nEACH"
p name_and_age.keys.each { |k| puts k}
