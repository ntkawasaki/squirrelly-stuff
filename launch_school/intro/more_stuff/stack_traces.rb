numbers = [1, 2, 34, 500, '500', 300]

# numbers.each_cons(2) do |i, y|
#   begin
#     puts "i #{i}, y #{y}, i + y = #{i + y}"
#   rescue TypeError => e
#     puts "Rescued: #{e.message}"
#   end
# end


# More complicated example
def space_out_letters(person)
  return person.split("").join(" ")
end

def greet(person)
  puts "H e l l o, " + space_out_letters(person)
end

def decorate_greeting(person)
  puts "" + greet(person) + ""
end

decorate_greeting("John")
decorate_greeting(1)


