## rescue rescues are code from coming to a complete halt when something goes wrong

# Cant call length on nil
names = ['bob', 'joe', 'steve', nil, 'frank']

names.each do |name|
  begin
    puts "Name #{name} has #{name.length} letters in it"
  rescue
    puts "Something went wrong!"
  end
end


# inline example. You cant call each on an integer
zero = 0 

puts "\nBefore"
zero.each { |num| puts num } rescue puts "Somethings wrong"
puts "After"
puts "\n"


# Predefined errors
def divide(number, divisor)
  begin
    answer =  number/divisor
    puts answer
  rescue ZeroDivisionError => e
    puts e.message
  end
end

divide(10, 4)
divide(20, 0)
divide(500, 100)
