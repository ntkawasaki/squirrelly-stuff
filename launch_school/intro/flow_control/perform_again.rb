loop do 
  puts "Do you want to do that again?"
  answer = gets.strip

  if answer.downcase != "y" 
    break 
  end
end

# while true do 
#   puts "Do you want to do that again?"
#   answer = gets.strip

#   if answer.downcase != "y" 
#     break
#   end
# end

# Another way to do while loops, not recommended by Matz
begin
  puts "Do you want to do that again?"
  answer = gets.strip.downcase
end while answer == "y"


