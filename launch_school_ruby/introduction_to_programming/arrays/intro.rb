array = [1, 'Bob', 4.33, 'another string']
print array

puts "\n\nfirst element: #{array.first}"
puts "last element: #{array.last}"
puts "index 2: #{array[2]}"


# returns the popped item, permanently remove it
puts "\npop:"
thing = array.pop
print "array: #{array}"
puts "\narray return value: #{thing}"


# push back the popped item permanently
puts "\npush:"
# array.push(thing)
array << thing   # shovel operator does same thing
print "array: #{array}"


# map and collect: these are not destructive.
puts "\n\nmap and collect:"
a = [1, 2, 3, 4]
squares = a.map { |num| num ** 2}
print "b: #{squares}"


# delete_at by index
puts "\n\ndelete_at:"
squares.delete_at(1)
puts squares


my_pets = ["cat", "dog", "bird", "cat", "snake", "snake", "dog", "bird"]
my_pets_2 = my_pets
my_pets_3 = my_pets

# delete by value, deletes all instances of that value
puts "\n\ndelete:"
my_pets.delete("cat")
puts my_pets


# uniq: iterates through, deletes duplicates, returns new array
puts "\n\nuniq:"
unique_pets =  my_pets_2.uniq
print "#{my_pets_2}"  # untouched
print "\n#{unique_pets}"


# using the uniq! will make it destructive
my_pets_3.uniq!
print print "\n#{my_pets_3}"


# select
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
big_nums = numbers.select { |num| num > 4}
puts big_nums
puts numbers
