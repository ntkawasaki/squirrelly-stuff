a = 11

# answer = case a
# when 5
#   "5"
# when 6
#   "6"
# else
#   "not 5 or 6"
# end

# puts answer.class
# puts answer

puts "\n"

# dont need to give case an argument
other_answer = case a
when (1..6)
  "1 to 6"
when (6..10) 
  "7 to 10"
else 
  "bigger than 10"
end

puts other_answer


if x = 5
  puts "how can this be true?"
else
  puts "it is not true"
end