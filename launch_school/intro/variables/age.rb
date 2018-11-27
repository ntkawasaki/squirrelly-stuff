puts "How old are you?"
age = gets.to_i

for i in 1..4 do
  puts "In #{i * 10} years you will be #{age + i * 10}"
end
