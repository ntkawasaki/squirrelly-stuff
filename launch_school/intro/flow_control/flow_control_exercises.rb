# (32 * 4) >= 129
# false != !true
# true == 4
# false == (847 == '847')
# (!true || (!(100 / 5) == 20) || ((328 / 4) == 82)) || false

def capitalizer(string)
  str = string
  return str.upcase if str.length > 10
end 


def number_game
  num = gets.strip.to_i

  answer = case num
  when 0..50
    "0 to 50"
  when 51..100
    "51 to 100"
  else
    if num < 0
      "you cant put in a negative number bitch"
    else
      "greater than 100"
    end
  end

  puts answer
  answer
end

number_game

# what will it evaluate to?
'4' == 4 ? puts("TRUE") : puts("FALSE")

x = 2
if ((x * 3) / 2) == (4 + 4 - x - 3)
  puts "Did you get it right?"
else
  puts "Did you?"
end

y = 9
x = 10
if (x + 1) <= (y)
  puts "Alright."
elsif (x + 1) >= (y)
  puts "Alright now!"
elsif (y + 1) == x
  puts "ALRIGHT NOW!"
else
  puts "Alrighty!"
end