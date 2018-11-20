def name
  name = gets.chomp 
  10.times do
    puts "Hello #{name}!"
  end
end

def full_name 
  first = gets.strip
  last = gets.strip 
  puts "Hey #{first} #{last}"
end

full_name()
