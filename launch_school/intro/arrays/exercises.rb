arr = [1, 3, 5, 7, 9, 11]
number = 4

puts "#{arr.include?(number)}"


arr = ["b", "a"]
arr = arr.product(Array(1..3))
arr.first.delete(arr.first.last)

arr = ["b", "a"]
arr = arr.product([Array(1..3)])
arr.first.delete(arr.first.last)


arr = [["test", "hello", "world"],["example", "mem"]]
puts "#{arr.last.first}"
puts "#{arr[1][0]}"


string = "Welcome to America!"
a = string[6]    # e
b = string[11]   # A
c = string[19]   # nil


hello = [1, 34, 33, 76, 0, 10]
new = hello.map { |num| num + 2}
p hello
p new