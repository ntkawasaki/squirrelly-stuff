def mutate(arr)
  arr.pop
end

def not_mutate(arr)
  arr.select { |i| i > 3 }
end

a = [1, 2, 3, 4, 5, 6]
puts "mutate: #{mutate(a)}"
puts "not mutate: #{not_mutate(a)}"

print a