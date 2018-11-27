a = [1, 2, 3]
returned = a.each { |e| puts e ** 2 }

puts "#{returned}"  # returns original collection
puts "#{a.each}"    # returns enumerator object


# map: like each but creates and returns a new array with whats returned in each iteration of the block
map_returned = a.map { |e| e ** 3 }
map_returned = a.map { |e| puts e ** 3 }
puts "#{map_returned}"

puts "#{a.map}"  # returns enumerator object


