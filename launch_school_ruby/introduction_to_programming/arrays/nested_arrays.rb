teams = [['Joe', 'Steve'], ['Frank', 'Molly'], ['Dan', 'Sara']]

teams.each do |team| 
  puts "#{team[0]} and #{team[1]}"
end

puts "\n"

a = [1, 2, 3]
b = [2, 3, 4]

b.pop           # remove last item
b.unshift(1)    # add 1 to front
print b == a
puts "\n"

