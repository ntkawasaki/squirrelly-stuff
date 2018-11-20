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
puts "\nwhile loop:"

count = gets.strip.to_i 
while count > 0 do 
  puts count 
  count -= 1
end

puts "done with while loop!"

# until loops
puts "\nuntil loop:"

count_2 = gets.strip.to_i 
until count_2 < 0 do
  puts count_2 
  count_2 -= 1
end

puts "Done with until loop!"