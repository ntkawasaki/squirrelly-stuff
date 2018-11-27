number = gets.chomp.to_i

if number == 3
  puts "number is 3"
elsif number == 4
  puts "number is 4"
else
  puts "number is not 3 nor 4"
end

# one line syntax with then
if number == 3 then puts "number is 3" end

# can also append the if condition at the end
puts "number is 3" if number == 3

# these are equivalant
puts "number is not 3" if number != 3
puts "number is not 3" unless number == 3

# ternary operator
"Some conditional" ? "What to return if true": "what to return if false"

# case statement in another file

# true and false
