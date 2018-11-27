# loop do 
#   puts "inside a loop"
# end

puts "loop do:"
i = 0

loop do 
  i += 2
  if i == 4
    next  # skip rest of code in this iteration
  end
  puts i  
  if i == 10
    break 
  end
end

# while loop
# puts "\nwhile loop, enter number:"

# count = gets.strip.to_i 
# while count > 0 do 
#   puts count 
#   count -= 1
# end

# puts "done with while loop!"

# # until loops
# puts "\nuntil loop, enter number:"

# count_2 = gets.strip.to_i 
# until count_2 < 0 do
#   puts count_2 
#   count_2 -= 1
# end

# puts "Done with until loop!"


# for loops return the collection of elements after it executes
x = 6
hi = for i in 1..x do
  puts "i is #{i}" 
end

# z = [1, 2, 3, 4, 5, 6, 7]
z = ["hello", 2, {:hey => 10}, nil, 5]
for i in z do
  puts "z is #{i}"
end

