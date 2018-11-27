a = [1, 2, 3]


# to_s is whats happening behind the scenes when you do something like:
puts "its as easy as #{a}"


# include? checks if an argment is in an array
puts a.include?(3)
puts a.include?(7)


# flatten takes an array and makes it 1 dimensional
b = [1, 2, [3, 4, 5, [6, 7], 8], "last"]
print b
puts "\n"
b.flatten!   # destructive now
print a 
puts "\n"


# each index: iterate through array with indices of elements
c = [1, 2, 3, 4, 5]
c.each_index { |i| puts "This is index #{i}"}


# each_with_index
c.each_with_index { |obj, ind| puts "This is obj: #{obj} with index #{ind}"}


# sort
pre = [1, 8, 7, 100, 23, 5]
print pre
post = pre.sort
print post
puts "\n"


# product
print [1, 2, 3].product([4, 5])
