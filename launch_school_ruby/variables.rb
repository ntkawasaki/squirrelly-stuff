# name = gets.chomp
# puts "Name #{name}"

# scope
a = 5

3.times do |n| 
  a = 3
  b = 5
end

puts a
# draws an error because times is a method invocation, so b is not available
# puts b

arr = [1, 2, 3]

# difference in scope when a method is invoked
for i in arr do 
  c = 5
end

puts c

# types
MY_CONSTANT = 'This is available everywhere'
$var = 'Im globally available'
# @@instances = 0
@var = 'Im available for this instance'
var = 'I must be passed around to cross scope boundaries'

x = 0
3.times do
  x += 1
end
puts x  # => 3


z = 0
3.times do
  z += 1
  w = y
end
puts w  # => error because its initialized in a more specific scope of do/end block
